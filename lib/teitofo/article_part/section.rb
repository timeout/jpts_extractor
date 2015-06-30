module TeiToFo
  module ArticlePart
    class Section
      include Enumerable

      def initialize
        @blocks = Array.new
        self.depth = 0
      end

      attr_accessor :title
      attr_reader :depth

      def title?
        not title.nil?
      end

      def bump_depth
        self.depth += 1
      end

      def add_block(article_block)
        @blocks << article_block
      end
      alias_method :<<, :add_block

      def size
        @blocks.size
      end

      def each(&block)
        @blocks.each(&block)
      end

      def format(section_formatter)
        section_formatter.format(self)
      end

      private
      attr_writer :depth

    end
  end
end
