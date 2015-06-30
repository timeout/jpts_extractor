module TeiToFo
  module ArticlePart
    class RefList
      include Enumerable

      def initialize
        @references = Array.new
      end

      attr_reader :references

      def add_reference(ref)
        @references << ref
      end
      alias_method :<<, :add_reference

      def each(&block)
        @references.each(&block)
      end

      def size
        @references.size
      end

      def format(reflist_formatter)
        reflist_formatter.format(self)
      end

    end
  end
end
