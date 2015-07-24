require 'jpts_extractor/handler/subhandler'
require 'jpts_extractor/builder/acknowledge_builder'

module JPTSExtractor
  module Handler
    class AcknowledgeHandler < SubHandler

      def initialize
        @builder = Builder::AcknowledgeBuilder.new
      end

      attr_reader :builder

      def on_start_element(name)
        case name
        when :label, :title, :p
          switch_text_on
          self.builder.text!
        end
        push_event(name)
      end

      def on_end_element(name)
        pop_event
        case name
        when :label
          self.builder.label!
          switch_text_off
        when :title
          self.builder.title!
          switch_text_off
        when :p
          self.builder.paragraph!
          switch_text_off
        end
      end

      def on_text(value)
        self.builder.create_fragment(value, event_stack) if text?
      end

    end
  end
end

