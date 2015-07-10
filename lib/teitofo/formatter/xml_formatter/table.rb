require 'teitofo/formatter/xml_formatter/inline_text'
require 'teitofo/formatter/xml_formatter/table_cell'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Table

        def initialize(xml)
          @xml = xml
          @table_cell_formatter = TableCell.new(@xml)
        end

        attr_reader :xml, :table_cell_formatter

        def format(table)
          @xml.comment! 'table'

            @xml.tag!('fo:block-container', {
              margin: '0pt'
            }) do

              @xml.tag!('fo:table', {
                # 'table-layout': 'fixed',
                width: '100%'
              }) do
                @xml.comment! 'columns'
                table.columns.each_with_index do |column, index|
                  @xml.tag!('fo:table-column', {
                    'column-number': "#{index + 1}",
                    'column-width': "proportional-column-width(#{column[:span]})"
                  }) 
                end

                @xml.comment! 'header'
                @xml.tag!('fo:table-header', {
                  'line-height': '15pt',
                  'font-size': '8pt',
                  # 'text-align': 'center',
                  'text-align': 'left',
                  'font-weight': 'bold',
                  'border-color': 'gray',
                  'border-width': '1.5pt',
                  'border-before-style': 'solid',
                  'border-after-style': 'solid'
                }) do
                  table.header_rows.each do |row|
                    @xml.tag!('fo:table-row') do
                      row.each_with_index do |cell, index|
                        self.table_cell_formatter.column_number = (index + 1)
                        cell.format(self.table_cell_formatter)
                      end
                    end
                  end
                end unless table.header_rows.empty?

                @xml.comment! 'body'
                @xml.tag!('fo:table-body', {
                  'font-size': '8pt',
                  'line-height': '12pt',
                  'text-align': 'left'
                }) do
                  table.body_rows.each do |row|
                    @xml.tag!('fo:table-row') do
                      row.each_with_index do |cell, index|
                        self.table_cell_formatter.column_number = (index + 1)
                        cell.format(self.table_cell_formatter)
                      end
                    end
                  end
                end unless table.body_rows.empty?

           #   end
            end
          end
        end

      end
    end
  end
end
