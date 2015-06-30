require 'teitofo/article_part/text_block'
require 'teitofo/handler/event_stack'
require 'teitofo/article_part/inline_text/plain_text'
require 'teitofo/article_part/inline_text/italic_text'
require 'teitofo/article_part/inline_text/citation'
require 'teitofo/article_part/inline_text/super_script_text'
require 'teitofo/article_part/inline_text/bold_text'

module TeiToFo
  module Builder
    class TextBlockBuilder
      include Handler::EventStack
      def initialize
        @text_block = ArticlePart::TextBlock.new
      end

      attr_reader :text_block

      def create_fragment(text, event_stack)
        inline_text = ArticlePart::InlineText::InlineText.new(text)
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
        @text_block << inline_text
      end

    end
  end
end
