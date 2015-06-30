require 'teitofo/handler/text_block_handler'
require 'teitofo/handler/subhandler'
require 'teitofo/builder/table_cell_builder'

module TeiToFo
  module Handler
    class TableCellHandler < SubHandler

    def initialize
      @builder = Builder::TableCellBuilder.new
    end

    attr_reader :builder

    def on_start_element(name)
      push_event(name)
    end

    def on_end_element(name)
      pop_event
    end

    def on_attr(name, value)
      builder.add_style(name, value)
    end

    def on_text(value)
      builder.create_fragment(value, event_stack)
    end

    end
  end
end
