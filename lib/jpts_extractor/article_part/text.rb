require 'jpts_extractor/article_part/inline_text/inline_text'

module JPTSExtractor
  module ArticlePart
    class Text
      include Enumerable

      def fragments?
        not @fragments.nil?
      end

      def fragments
        @fragments ||= Array.new
      end

      def fragments= (fragments)
        @fragments = fragments
      end

      def add_fragment(inline_text)
        self.fragments << inline_text
        self
      end
      alias_method :<<, :add_fragment

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

    end
  end
end
