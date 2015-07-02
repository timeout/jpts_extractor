require 'teitofo/handler/subhandler'
require 'teitofo/builder/table_builder'

require 'teitofo/handler/table_cell_handler'

module TeiToFo
  module Handler
    class TableHandler < SubHandler
      def initialize
        @builder = Builder::TableBuilder.new
      end

      attr_reader :builder, :cell_handler, :row_state

      def on_start_element(name)
        case name
        when :col
          switch_attr_on
        when :thead, :tbody
          @row_state = name
        when :th, :td
          @cell_handler = TableCellHandler.new
        end
      end

      def on_end_element(name)
        case name
        when :col
          self.builder.add_column_styling!
          switch_attr_off
        when :thead, :tbody
          @row_state = nil
        when :th, :td
          table_cell = self.cell_handler.builder.table_cell
          self.builder.build_row(table_cell)
          @cell_handler = nil
        when :tr
          self.builder.add_row_to_header_rows! if self.row_state == :thead
          self.builder.add_row_to_body_rows! if self.row_state == :tbody
        end
      end

      def on_attr(name, value)
        @cell_handler.on_attr(name, value) unless self.cell_handler.nil?
        self.builder.add_style(name, value) if attr?
      end

      def on_text(value)
        @cell_handler.on_text(value) unless self.cell_handler.nil?
      end

    end
  end
end

