require 'teitofo/handler/subhandler'
require 'teitofo/builder/table_wrap_builder'
require 'teitofo/handler/caption_handler'

module TeiToFo
  module Handler
    class TableWrapHandler < SubHandler

      def initialize
        @builder = Builder::TableWrapBuilder.new
      end

      attr_reader :builder, :caption_handler

      def on_start_element(name)
        self.caption_handler.on_start_element(name) if self.caption_handler
        case name
        when :label
          @label = true
          self.builder.text_block!
        when :caption
          @caption_handler = CaptionHandler.new
        end
      end

      def on_end_element(name)
        case name
        when :label
          @label = false
          self.builder.label!
        when :caption
          builder.caption = self.caption_handler.builder.caption
          @caption_handler = nil
        end
        self.caption_handler.on_end_element(name) if self.caption_handler
      end

      def on_text(value)
        self.builder.create_fragment(value, event_stack) if label?
        self.caption_handler.on_text(value) if self.caption_handler
      end

      private
      def label?
        @label
      end
    end
  end
end
