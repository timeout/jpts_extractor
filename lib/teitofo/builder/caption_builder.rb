require 'teitofo/article_part/caption'
require 'teitofo/builder/text_builder'

module TeiToFo
  module Builder
    class CaptionBuilder
      include TextBuilder

      def initialize
        @caption = ArticlePart::Caption.new
      end

      attr_reader :caption

      def title!
        caption.title = self.text
      end

      def paragraph!
        caption.paragraph = self.text
      end

    end
  end
end
