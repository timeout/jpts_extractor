require 'teitofo/article_part/body.rb'

module TeiToFo
  module Builder
    class BodyBuilder
      def initialize
        @body = ArticlePart::Body.new
      end

      attr_reader :body

      def add_section(subsection)
        @body << subsection
      end
      alias_method :<<, :add_section
    end
  end
end
