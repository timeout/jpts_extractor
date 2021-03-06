require 'jpts_extractor/article_part/journal_meta'

module JPTSExtractor
  module Builder
    class JournalMetaBuilder
      def initialize
        @journal_meta = ArticlePart::JournalMeta.new
      end

      attr_reader :journal_meta

      def journal_title= (title)
        journal_meta.journal_title = title
      end
    end
  end
end
