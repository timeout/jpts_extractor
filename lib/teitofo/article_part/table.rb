module TeiToFo
  module ArticlePart
    class Table

      def initialize
        @header_rows = Array.new
        @body_rows = Array.new
      end

      attr_reader :header_rows

      def add_cell_to_header_row(cell)
        @header_rows << cell
      end

      def format(table_formatter)
        table_formatter.format(self)
      end

      def to_s
      end

    end
  end
end
