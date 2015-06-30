require 'teitofo/article_part/table_cell'

module TeiToFo
  module Builder
    class TableCellBuilder

      def initialize
        @table_cell = ArticlePart::TableCell.new
      end

      attr_reader :table_cell

      def add_style(key, value)
        self.table_cell.add_style(key, value)
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
        self.table_cell.text_block << inline_text
      end
    end
  end
end
