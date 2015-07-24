require 'jpts_extractor/article_part/ref'

module JPTSExtractor
  module Builder
    class RefBuilder

      def initialize
        @ref = ArticlePart::Ref.new
      end

      attr_reader :ref

      def publication_type= (publication_type)
        @ref.publication_type = publication_type
      end

      def source= (source)
        @ref.source = source
      end

      def article_title= (article_title)
        @ref.article_title = article_title
      end

      def volume= (volume)
        @ref.volume = volume
      end

      def year= (year)
        @ref.year = year
      end

      def month= (month)
        @ref.month = month
      end

      def day= (day)
        @ref.day = day
      end

      def fpage= (fpage)
        @ref.fpage = fpage
      end

      def lpage= (lpage)
        @ref.lpage = lpage
      end

      def issue= (issue)
        @ref.issue = issue
      end

      def add_editor_name(name)
        @ref.add_editor_name(name.name)
      end

      def add_author_name(name)
        @ref.add_author_name(name.name)
      end
    end
  end
end

