require 'teitofo/article_part/text'

module TeiToFo
  module ArticlePart
    class TableCell
      
      def initialize
        @text = Text.new
      end

      attr_accessor :text

      def text?
        self.text.fragments?
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
