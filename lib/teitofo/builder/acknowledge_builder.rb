require 'teitofo/article_part/acknowledge'
require 'teitofo/builder/text_builder'

module TeiToFo
  module Builder
    class AcknowledgeBuilder
      include TextBuilder

      def initialize
        @acknowledgement = ArticlePart::Acknowledge.new
      end

      attr_reader :acknowledgement
      alias_method :ack, :acknowledgement

      def label!
        self.acknowledgement.label = self.text
      end

      def title!
        self.acknowledgement.title = self.text
      end

      def paragraph!
        self.acknowledgement.paragraph =  self.text
      end

      def add_section(subsection)
        @acknowledgement << subsection
      end
      alias_method :<<, :add_section
    end
  end
end

