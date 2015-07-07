require 'teitofo/article_part/table_cell'
require 'teitofo/formatter/xml_formatter/text'

module TeiToFo
  module Formatter
    module XmlFormatter
      class TableCell

        def initialize(xml)
          @xml = xml
          @text_formatter = Text.new(@xml)
        end

        attr_reader :xml, :text_formatter
        attr_writer :column_number

        def format(table_cell)
          @xml.tag!('fo:table-cell', {
            'column-number': "#{column_number}",
            'number-columns-spanned': "#{table_cell.styles[:colspan]}"
          }) do
            table_cell.text.format(self.text_formatter)
          end if table_cell.text?
        end

        private
        attr_reader :column_number
      end
    end
  end
end
