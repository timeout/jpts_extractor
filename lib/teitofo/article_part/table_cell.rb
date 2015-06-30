require 'teitofo/article_part/text_block'

module TeiToFo
  module ArticlePart
    class TableCell
      
      def initialize
        @text_block = TextBlock.new
      end

      attr_accessor :text_block

      def text_block?
        self.text_block.fragments?
      end

      def stylish?
        not @styles.nil?
      end

      def styles
        @styles
      end

      def add_style(key, value)
        @styles ||= Hash.new
        @styles[key] = value
      end

      def format(formatter)
        formatter.format(self)
      end

    end
  end
end
