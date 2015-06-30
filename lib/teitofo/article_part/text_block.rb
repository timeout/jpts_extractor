require 'teitofo/article_part/inline_text/inline_text'

module TeiToFo
  module ArticlePart
    class TextBlock
      include Enumerable

      attr_reader :fragments

      def fragments?
        not self.fragments.nil?
      end

      def add_fragment(inline_text)
        self.fragments ||= Array.new
        self.fragments << inline_text
        self
      end
      alias_method :<<, :add_fragment

      def stylish?
        not @styles.nil?
      end

      def styles
        @styles
      end

      def add_style(key, value)
        @styles ||= Hash.new
        @styles[key] = value
        self
      end

      def format(formatter)
        formatter.format(self)
      end

      def size
        self.fragments.size
      end

      def each(&block)
        self.fragments.each(&block)
      end

      def to_s
        unless self.fragments
          return String.new
        end
        words = self.fragments.map { |fragment| fragment.text }
        words.join(' ')
      end

      private
      attr_writer :fragments
    end
  end
end
