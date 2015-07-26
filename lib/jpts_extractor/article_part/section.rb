module JPTSExtractor
  module ArticlePart
    class Section
      include Enumerable

      def initialize
        self.depth = 0
      end

      attr_accessor :title, :depth

      def blocks
        @blocks ||= Array.new
      end

      def blocks= (blocks)
        @blocks = blocks
      end

      def title?
        not title.nil?
      end

      def bump_depth
        self.depth += 1
      end

      # a block is any block element: text, table, figure, (sub-)section
      def add_block(article_block)
        self.blocks << article_block
      end
      alias_method :<<, :add_block

      def size
        self.blocks.size
      end

      def each(section, &block)
        self.blocks.each do |item|
          if item.is_a? self.class
            item.each(item, &block)
          else
            yield(item)
          end
        end
      end

      def map(section, &block)
        result = Section.new
        result.title = self.title
        result.depth = self.depth

        self.blocks.each do |item|
          if item.is_a? self.class
            result << item.map(item, &block)
          else
            result << yield(item)
          end
        end
        result
      end

      def map!(section, &block)
        map = self.map(section, &block)
        self.title = map.title
        self.depth = map.depth
        @blocks = map.blocks
        self
      end

      def format(section_formatter)
        section_formatter.format(self)
      end

    end
  end
end
