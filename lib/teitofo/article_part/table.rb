module TeiToFo
  module ArticlePart
    class Table

      def initialize
        @table_header_rows = Array.new
        @table_body_rows = Array.new
      end

      attr_accessor :label_text_block, :title_text_block, :column_group,
        :table_header_rows, :table_body_rows

      def column_group?
        not self.column_group.nil?
      end

      def format(table_formatter)
        table_formatter.format(self)
      end

      def to_s
        output = String.new
        self.table_body_rows.each do |row|
          row.each do |cell|
            output += cell.options.to_s + " | "
            output += "'" + cell.text_block_handler
              .builder.text_block.to_s + "'" + " | "
          end 
          output += "\n"
        end
        output
      end

    end
  end
end
