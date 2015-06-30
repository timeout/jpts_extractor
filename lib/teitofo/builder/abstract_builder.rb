require 'teitofo/article_part/abstract'

module TeiToFo
  module Builder
    class AbstractBuilder
      def initialize
        @abstract = ArticlePart::Abstract.new
      end

      attr_reader :abstract

      def title= (title)
        @abstract.title = title
      end

      def paragraph= (text_block)
        @abstract.paragraph = text_block
      end

      def add_section(subsection)
        @abstract << subsection
      end
      alias_method :<<, :add_section
    end
  end
end

