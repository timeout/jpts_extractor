require 'teitofo/article_part/section'
require 'teitofo/builder/text_builder'

module TeiToFo
  module Builder
    class SectionBuilder
      include TextBuilder

      def initialize
        @sec = ArticlePart::Section.new
      end

      attr_reader :sec

      def add_subsection(subsection)
        @sec << subsection
      end
      alias_method :<<, :add_subsection

      def title!
        self.sec.title = self.text
      end

      def paragraph!
        self.sec << self.text
      end

    end
  end
end
