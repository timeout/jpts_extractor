require 'jpts_extractor/article_part/table'

module JPTSExtractor
  module Builder
    class TableBuilder
      def initialize
        @table = ArticlePart::Table.new
        @row = Array.new
      end

      attr_reader :table, :styles

      def add_style(key, value)
        @styles ||= Hash.new
        @styles[key] = value
      end

      def add_column_styling!
        unless self.styles.nil?
          self.table.add_column_styling(self.styles.dup)
          self.styles.clear
        end
      end

      def build_row(cell)
        @row << cell
      end
      alias_method :<<, :build_row

      def add_row_to_header_rows!
        self.table.add_header_row(@row.dup)
        @row.clear
      end

      def add_row_to_body_rows!
        self.table.add_body_row(@row.dup)
        @row.clear
      end

    end
  end
end

