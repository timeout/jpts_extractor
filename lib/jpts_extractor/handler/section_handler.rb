require 'jpts_extractor/handler/subhandler'
require 'jpts_extractor/builder/section_builder'

module JPTSExtractor
  module Handler
    class SectionHandler < SubHandler
      def initialize
        @builder = Builder::SectionBuilder.new
      end

      attr_reader :builder

      def on_start_element(name)
        case name
        when :title, :p
          switch_text_on
          self.builder.text!
        end
        push_event(name)
      end

      def on_end_element(name)
        pop_event
        case name
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

      def on_attr(name, value)
        if top == :xref and name == :'ref-type'
          pop_event
          push_event(value.to_sym)
        end
      end

    end
  end
end
