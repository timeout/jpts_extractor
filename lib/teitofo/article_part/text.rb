require 'teitofo/article_part/inline_text/inline_text'

module TeiToFo
  module ArticlePart
    class Text
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
