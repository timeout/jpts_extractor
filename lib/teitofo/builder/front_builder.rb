require 'teitofo/article_part/front'

module TeiToFo
  module Builder
    class FrontBuilder

      def initialize
        @front = ArticlePart::Front.new
      end

      attr_reader :front

      def journal_meta= (journal_meta)
        @front.journal_meta = journal_meta
      end

      def article_meta= (article_meta)
        @front.article_meta = article_meta
      end

    end
  end
end
