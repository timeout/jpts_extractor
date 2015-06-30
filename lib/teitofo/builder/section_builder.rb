require 'teitofo/article_part/section'

module TeiToFo
  module Builder
    class SectionBuilder

      def initialize
        @sec = ArticlePart::Section.new
      end

      attr_reader :sec

      def title= (title)
        @sec.title = title
      end

      def add_subsection(subsection)
        @sec << subsection
      end
      alias_method :<<, :add_subsection

    end
  end
end
