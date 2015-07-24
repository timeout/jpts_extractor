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
        self.fig.graphic_path = Pathname.new(value).basename.to_s
      end

      def label!
        self.fig.label = self.text
      end

      def caption= (caption)
        self.fig.caption = caption
      end
    end
  end
end
