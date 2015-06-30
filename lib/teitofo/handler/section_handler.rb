require 'teitofo/handler/subhandler'
require 'teitofo/builder/section_builder'

module TeiToFo
  module Handler
    class SectionHandler < SubHandler
      def initialize
        @builder = Builder::SectionBuilder.new
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
          @builder.title = @text
          switch_text_off
        when :p
          @builder.add_subsection(@text_block_handler.builder.text_block)
          @text_block_handler = nil
        end
      end

      def on_text(value)
        @text = value if text?
        @text_block_handler.on_text(value) if @text_block_handler
      end
    end
  end
end
