require 'jpts_extractor/article_part/ref'
require 'jpts_extractor/builder/text_builder'

module JPTSExtractor
  module Builder
    class RefBuilder
      include TextBuilder

      def initialize
        @ref = ArticlePart::Ref.new
      end

      attr_reader :ref

      def publication_type= (publication_type)
        self.ref.publication_type = publication_type
      end

      def source!
        self.ref.source = self.text
      end

      def article_title= (article_title)
        self.ref.article_title = article_title
      end

      def chapter_title= (chapter_title)
        self.ref.chapter_title = chapter_title
      end

      def volume= (volume)
        self.ref.volume = volume
      end

      def year= (year)
        self.ref.year = year
      end

      def month= (month)
        self.ref.month = month
      end

      def day= (day)
        self.ref.day = day
      end

      def fpage= (fpage)
        self.ref.fpage = fpage
      end

      def lpage= (lpage)
        self.ref.lpage = lpage
      end

      def issue= (issue)
        self.ref.issue = issue
      end

      def publisher_loc= (publisher_loc)
        self.ref.publisher_loc = publisher_loc
      end

      def publisher_name= (publisher_name)
        self.ref.publisher_name = publisher_name
      end

      def add_editor_name(name)
        self.ref.add_editor_name(name.name)
      end

      def add_author_name(name)
        self.ref.add_author_name(name.name)
      end
    end
  end
end

