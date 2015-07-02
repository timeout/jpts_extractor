require 'teitofo/article_part/caption'
require 'teitofo/article_part/text_block'

module TeiToFo
  module Builder
    class CaptionBuilder

      def initialize
        @caption = ArticlePart::Caption.new
      end

      attr_reader :caption, :text_block

      def text_block!
        @text_block = ArticlePart::TextBlock.new
      end

      def title!
        caption.title = self.text_block
      end

      def paragraph!
        caption.paragraph = self.text_block
      end

      def create_fragment(value, event_stack)
        inline_text = ArticlePart::InlineText::InlineText.new(value)
        event_stack.each do |event|
          case event
          when :italic
            inline_text = ArticlePart::InlineText::ItalicText.new(inline_text)
          when :bold
            inline_text = ArticlePart::InlineText::BoldText.new(inline_text)
          when :xref 
            inline_text = ArticlePart::InlineText::Citation.new(inline_text)
          when :sup
            inline_text = ArticlePart::InlineText::SuperScriptText.new(inline_text)
          when :monospace
            inline_text = ArticlePart::InlineText::Monospace.new(inline_text)
          end
        end if event_stack
        self.text_block << inline_text
      end
    end
  end
end
