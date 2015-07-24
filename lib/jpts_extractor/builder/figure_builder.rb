require 'jpts_extractor/article_part/figure'
require 'jpts_extractor/builder/text_builder'

require 'pathname'

module JPTSExtractor
  module Builder
    class FigureBuilder
      include TextBuilder

      def initialize
        @fig = ArticlePart::Figure.new
      end

      attr_reader :fig

      def basename_path(value)
        Pathname.new(value).basename.to_s
      end

      def label!
        fig.label = self.text
      end

      def caption= (caption)
        fig.caption = caption
      end
    end
  end
end
