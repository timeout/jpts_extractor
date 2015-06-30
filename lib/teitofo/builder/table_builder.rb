require 'teitofo/article_part/table'

module TeiToFo
  module Builder
    class TableBuilder
      def initialize
        @table = ArticlePart::Table.new
      end

      attr_reader :table

      def add_cell_to_header_row(cell)
        self.table.add_cell_to_header_row(cell)
      end
    end
  end
end

