require 'teitofo/handler/subhandler'
require 'teitofo/builder/text_block_builder'

module TeiToFo
  module Handler
    class TextBlockHandler < SubHandler
      def initialize
        @builder = Builder::TextBlockBuilder.new
      end

      attr_reader :builder

      def on_start_element(name)
        push_event(name)
      end

      def on_end_element(name)
        pop_event
      end

      def on_text(value)
        builder.create_fragment(value, event_stack)
      end

      def on_attr(name, value)
      end
    end
  end
end

