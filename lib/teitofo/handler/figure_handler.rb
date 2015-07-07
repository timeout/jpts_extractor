require 'teitofo/handler/subhandler'
require 'teitofo/handler/caption_handler'
require 'teitofo/builder/figure_builder'

module TeiToFo
  module Handler
    class FigureHandler < SubHandler

      def initialize
        @builder = Builder::FigureBuilder.new
      end

      attr_reader :builder, :caption_handler

      def on_start_element(name)
        self.caption_handler.on_start_element(name) if self.caption_handler
        case name
        when :'object-id'
          switch_text_on
        when :label
          @label = true
          self.builder.text!
        when :caption
          @caption_handler = CaptionHandler.new
        end
      end

      def on_end_element(name)
        case name
        when :'object-id'
          self.builder.basename_path(@text)
          switch_text_off
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
        @text = value if text?
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
