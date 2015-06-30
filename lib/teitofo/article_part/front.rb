module TeiToFo
  module ArticlePart
    class Front
      def initialize
      end

      attr_accessor :journal_meta, :article_meta

      def format(front_formatter)
        front_formatter.format(self)
      end

    end
  end
end
