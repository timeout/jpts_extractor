require 'teitofo/article_part/abstract'
require 'teitofo/builder/text_builder'

module TeiToFo
  module Builder
    class AbstractBuilder
      include TextBuilder

      def initialize
        @abstract = ArticlePart::Abstract.new
      end

      attr_reader :abstract

      def title!
        self.abstract.title = self.text
      end

      def paragraph!
        self.abstract.paragraph =  self.text
      end

      def add_section(subsection)
        @abstract << subsection
      end
      alias_method :<<, :add_section
    end
  end
end

