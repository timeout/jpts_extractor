require 'jpts_extractor/article_part/section'
require 'jpts_extractor/builder/text_builder'

module JPTSExtractor
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
