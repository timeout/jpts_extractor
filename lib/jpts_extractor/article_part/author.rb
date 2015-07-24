module JPTSExtractor
  module ArticlePart
    class Author
      def initialize(given_names, surname, refs)
        @given_names, @surname, @refs = given_names, surname, refs
      end

      attr_reader :given_names, :surname, :refs

      def each_ref(&block)
        @refs.each(&block)
      end

      def format(author_formatter)
        author_formatter.format(self)
      end

      def to_s
        "#{@given_names} #{@surname}, [#{@refs.join(', ')}]"
      end
    end
  end
end
