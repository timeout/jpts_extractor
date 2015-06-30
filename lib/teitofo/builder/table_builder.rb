require 'teitofo/article_part/table'

module TeiToFo
  module Builder
    class TableBuilder
      def initialize
        @table = ArticlePart::Table.new
      end

      attr_reader :table, :columns, :row, :table_headers

      def label= (text_block)
        @table.label_text_block = text_block
      end

      def title= (text_block)
        @table.title_text_block = text_block
      end

      def add_column(column_hash)
        @columns ||= Array.new
        @columns << column_hash
      end

      def build_column_group
        @table.column_group = self.columns
      end

      def add_cell(cell)
        @row ||= Array.new
        @row << cell
      end

      def add_table_header_row
        @table.table_header_rows << self.row.dup
        self.row.clear
      end

      def add_table_body_row
        @table.table_body_rows << self.row.dup
        self.row.clear
      end

    end
  end
end

