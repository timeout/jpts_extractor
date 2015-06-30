require 'teitofo/handler/subhandler'
require 'teitofo/builder/table_builder'

require 'teitofo/handler/table_cell_handler'

module TeiToFo
  module Handler
    class TableHandler < SubHandler
      def initialize
        @builder = Builder::TableBuilder.new
      end

      attr_reader :builder, :cell_handler

      def on_start_element(name)
        case name
        when :th
          @cell_handler = TableCellHandler.new
        end
      end

      def on_end_element(name)
        case name
        when :th
          self.builder.add_cell_to_header_row(self.cell_handler.builder.table_cell)
          @cell_handler = nil
        end
      end

      def on_attr(name, value)
        @cell_handler.on_attr(name, value) unless self.cell_handler.nil?
      end

      def on_text(value)
        @cell_handler.on_text(value) unless self.cell_handler.nil?
      end

    end
  end
end

