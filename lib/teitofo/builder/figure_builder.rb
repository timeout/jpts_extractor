require 'teitofo/article_part/figure'
require 'teitofo/article_part/text_block'

require 'pathname'

module TeiToFo
  module Builder
    class FigureBuilder

      def initialize
        @fig = ArticlePart::Figure.new
      end

      attr_reader :fig, :text_block

      def basename_path(value)
        path = Pathname.new(value)
        fig.graphic_basename = path.basename
      end

      def text_block!
        @text_block = ArticlePart::TextBlock.new
      end

      def label!
        fig.label = self.text_block
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
        fig.caption = caption
      end
    end
  end
end
