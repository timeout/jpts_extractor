require 'jpts_extractor/article_part/text'
require 'jpts_extractor/handler/event_stack'
require 'jpts_extractor/article_part/inline_text/plain_text'
require 'jpts_extractor/article_part/inline_text/italic_text'
require 'jpts_extractor/article_part/inline_text/citation'
require 'jpts_extractor/article_part/inline_text/figure'
require 'jpts_extractor/article_part/inline_text/super_script_text'
require 'jpts_extractor/article_part/inline_text/bold_text'
require 'jpts_extractor/article_part/inline_text/monospace_text'

module JPTSExtractor
  module Builder
    module TextBuilder
      include Handler::EventStack

      def text!
        @text = ArticlePart::Text.new
      end

      attr_reader :text

      def create_fragment(text, event_stack)
        inline_text = ArticlePart::InlineText::InlineText.new(text)
        event_stack.each do |event|
          case event
          when :italic
            inline_text = ArticlePart::InlineText::ItalicText.new(inline_text)
          when :bold
            inline_text = ArticlePart::InlineText::BoldText.new(inline_text)
          when :bibr
            inline_text = ArticlePart::InlineText::Citation.new(inline_text)
          when :fig
            inline_text = ArticlePart::InlineText::Figure.new(inline_text)
          when :sup
            inline_text = ArticlePart::InlineText::SuperScriptText.new(inline_text)
          when :monospace
            inline_text = ArticlePart::InlineText::MonospaceText.new(inline_text)
          end
        end if event_stack
        @text << inline_text
      end

    end
  end
end
