require 'teitofo/formatter/xml_formatter/inline_text'
require 'teitofo/formatter/xml_formatter/text_block'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Table

        def initialize(xml)
          @xml = xml
          @inline_text_formatter = InlineText.new(@xml)
          @text_block_formatter = TextBlock.new(@xml)
        end

        attr_reader :xml, :inline_text_formatter, :text_block_formatter

        def format(table)
          @xml.comment!('table')
          @xml.tag!('fo:block') do
            table.label_text_block.fragments.each do |fragment| 
              fragment.add_style(:'font-weight', 'bold')
              fragment.format(self.inline_text_formatter)
            end if table.label_text_block
            table.title_text_block.fragments.each do |fragment|
              fragment.format(self.inline_text_formatter)
            end if table.title_text_block

            @xml.tag!('fo:table', {
              'table-layout': 'fixed',
              width: '100%'
            }) do
              table.column_group.each_with_index do |column, index|
                @xml.tag!('fo:table-column', {
                  'column-number': "#{index + 1}",
                  'column-width': "proportional-column-width(#{column[:span]})"
                })
              end if table.column_group?
            end
            @xml.tag!('fo:table-header', {
              'line-height': '15pt',
              'font-size': '8pt',
              'text-align': 'center',
              'font-weight': 'bold',
              'border-color': 'gray',
              'border-width': '1.5pt',
              'border-before-style': 'solid',
              'border-after-style': 'solid'
            }) do
              @xml.comment!("table header rows: #{table.table_header_rows.size}")
              table.table_header_rows.each_with_index do |header_row, row_index|
                @xml.tag!('fo:table-row') do
                  header_row.each_with_index do |cell, cell_index|
                    @xml.tag!('fo:table-cell', {
                      'column-number': "#{cell_index}",
                      'number-columns-spanned': "#{cell.options[:colspan]}"
                    }) do
                      @xml.comment!("text here")
                      # cell.text_block_handler.builder.text_block
                      #  .format(self.text_block_formatter)
                    end
                  end
                end
              end
            end
            @xml.tag!('fo:table-body', {
              'font-size': '8pt',
              'line-height': '12pt',
              'text-align': 'center'
            }) do
              @xml.comment!("table header rows: #{table.table_body_rows.size}")
              table.table_body_rows.each_with_index do |body_row, row_index|
                #TODO: background color
                @xml.tag!('fo:table-row') do
                  body_row.each_with_index do |cell, cell_index|
                    cell_text_block = cell.text_block_handler.builder.text_block
                    @xml.comment!("cell: #{cell.options}, #{cell_text_block.format(@text_block_formatter)}") unless cell_text_block.nil?
                    @xml.tag!('fo:table-cell', {
                      'column-number': "#{cell_index}",
                      'number-columns-spanned': "#{cell.options[:colspan]}"
                    }) do
                      @xml.comment!("text here")
                      # cell.text_block_handler.builder.text_block
                      #   .format(self.text_block_formatter)
                    end
                  end
                end
              end
            end
          end
        end

      end
    end
  end
end
