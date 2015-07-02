require 'teitofo/article_part/table_wrap'
require 'teitofo/article_part/text_block'

module TeiToFo
  module Builder
    class TableWrapBuilder

      def initialize
        @table_wrap = ArticlePart::TableWrap.new
      end

      attr_reader :table_wrap, :text_block

      def text_block!
        @text_block = ArticlePart::TextBlock.new
      end

      def label!
        self.table_wrap.label = self.text_block
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

      def caption= (caption)
        self.table_wrap.caption = caption
      end

      def table=(table)
        @table_wrap.table = table
      end
    end
  end
end
