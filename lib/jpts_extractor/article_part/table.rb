module JPTSExtractor
  module ArticlePart
    class Table

      def initialize
        @columns = Array.new
        @header_rows = Array.new
        @body_rows = Array.new
      end

      attr_reader :columns, :header_rows, :body_rows

      def add_column_styling(styles)
        self.columns << styles
      end

      def add_header_row(row)
        @header_rows << row
      end

      def add_body_row(row)
        @body_rows << row
      end

      def format(table_formatter)
        table_formatter.format(self)
      end

      def to_s
        "#{self.columns}\n#{self.header_rows}\n#{self.body_rows}"
      end

    end
  end
end
