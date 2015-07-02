require 'teitofo/article_part/table_cell'
require 'teitofo/formatter/xml_formatter/text_block'

module TeiToFo
  module Formatter
    module XmlFormatter
      class TableCell

        def initialize(xml)
          @xml = xml
          @text_block_formatter = TextBlock.new(@xml)
        end

        attr_reader :xml, :text_block_formatter
        attr_writer :column_number

        def format(table_cell)
          @xml.tag!('fo:table-cell', {
            'column-number': "#{column_number}",
            'number-columns-spanned': "#{table_cell.styles[:colspan]}"
          }) do
            table_cell.text_block.format(self.text_block_formatter)
          end if table_cell.text_block?
        end

        private
        attr_reader :column_number
      end
    end
  end
end
