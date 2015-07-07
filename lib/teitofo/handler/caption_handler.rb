require 'teitofo/builder/caption_builder'
require 'teitofo/handler/subhandler'

module TeiToFo
  module Handler
    class CaptionHandler < SubHandler

      def initialize
        @builder = Builder::CaptionBuilder.new
      end

      attr_reader :builder

      def on_start_element(name)
        push_event(name)
        case name
        when :title, :p
          self.builder.text!
        end
      end

      def on_end_element(name)
        pop_event
        case name
        when :title
          self.builder.title!
        when :p
          self.builder.paragraph!
        end
      end

      def on_text(value)
        self.builder.create_fragment(value, event_stack)
      end
    end
  end
end
