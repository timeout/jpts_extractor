require 'teitofo/handler/subhandler'
require 'teitofo/builder/table_builder'

require 'teitofo/handler/text_block_handler'

module TeiToFo
  module Handler
    class TableHandler < SubHandler
      def initialize
        @builder = Builder::TableBuilder.new
      end

      TextHandler = Struct.new(:name, :text_block_handler)
      Cell = Struct.new(:name, :options, :text_block_handler)

      attr_accessor :row_type
      attr_reader :builder, :text_handler, :column, :cell

      def on_start_element(name)
        self.text_handler.text_block_handler.on_start_element(name) if self.text_handler
        self.cell.text_block_handler.on_start_element(name) if self.cell
        case name
        when :label
          switch_text_on
          self.text_handler = TextHandler.new(name, TextBlockHandler.new)
        when :title
          if event_stack[1] == :caption
            switch_text_on
            self.text_handler = TextHandler.new(name, TextBlockHandler.new)
          end
        when :thead, :tbody
          self.row_type = name
        when :col
          switch_attr_on
          self.column = Hash.new
        when :th, :td
          switch_text_on
          switch_attr_on
          self.cell = Cell.new(row_type, Hash.new, TextBlockHandler.new)
        end
        push_event(name)
      end

      def on_end_element(name)
        case name
        when :label
          text_block = self.text_handler.text_block_handler.builder.text_block
          builder.label = text_block if self.text_handler.name == name
          switch_text_off
          @text_handler = nil
        when :title
          if event_stack[1] == :caption
            text_block = self.text_handler.text_block_handler.builder.text_block
            builder.title = text_block if self.text_handler.name == name
            switch_text_off
          end
        when :col
          builder.add_column(column)
          switch_attr_off
        when :thead, :tbody
          self.row_type = nil
        when :colgroup
          builder.build_column_group
        when :th, :td
          switch_text_off
          switch_attr_off
          builder.add_cell(self.cell)
        when :tr
          builder.add_table_header_row if self.cell.name == :thead
          builder.add_table_body_row if self.cell.name == :tbody
        end
        pop_event
      end

      def on_text(value)
        self.text_handler.text_block_handler.on_text(value) if self.text_handler
        self.cell.text_block_handler.on_text(value) if self.cell
      end

      def on_attr(name, value)
        self.column[name] = value if self.column
        self.cell.options[name] = value if self.cell
      end

      private
      attr_writer :text_handler, :column, :cell

    end
  end
end

