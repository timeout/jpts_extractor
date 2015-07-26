module JPTSExtractor
  module ArticlePart
    class JournalMeta
      def initialize
      end

      attr_accessor :journal_title

      def format(journal_meta_formatter)
        journal_meta_formatter.format(self)
      end
    end
  end
end
