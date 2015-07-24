module JPTSExtractor
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

      # a block is any block element: text, table, figure, (sub-)section
      def add_block(article_block)
        @blocks << article_block
      end
      alias_method :<<, :add_block

      def size
        @blocks.size
      end

      def each
        if block_given?
          @blocks.each { |block| yield block }
        else
          @blocks.enum_for
        end
      end

      def map_text!
        @blocks.map! do |block|
          if block.is_a? Text
            yield(block)
          end
        end
        self
      end

      def format(section_formatter)
        section_formatter.format(self)
      end

      private
      attr_writer :depth

    end
  end
end
