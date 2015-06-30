require 'teitofo/handler/subhandler'
require 'teitofo/builder/abstract_builder'
require 'teitofo/handler/text_block_handler'
require 'teitofo/handler/section_handler'

module TeiToFo
  module Handler
    class AbstractHandler < SubHandler
      def initialize
        @builder = Builder::AbstractBuilder.new
      end

      attr_reader :builder

      def on_start_element(name)
        @text_block_handler.on_start_element(name) if @text_block_handler
        case name
        when :title
          switch_text_on
        when :p
          @text_block_handler = TextBlockHandler.new 
        end
        push_event(name)
      end

      def on_end_element(name)
        pop_event
        case name
        when :title
          builder.title = @text
          switch_text_off
        when :p
          builder.paragraph = @text_block_handler.builder.text_block
          @text_block_handler = nil
        end
      end

      def on_text(value)
        @text = value if text?
        @text_block_handler.on_text(value) if @text_block_handler
      end

      def on_attr(name, value)
        @text_block_handler.on_attr(name, value) if @text_block_handler
      end
    end
  end
end

