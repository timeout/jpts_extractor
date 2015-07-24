require 'jpts_extractor/article_part/caption'
require 'jpts_extractor/builder/text_builder'

module JPTSExtractor
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
