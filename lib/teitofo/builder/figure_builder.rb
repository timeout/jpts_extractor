require 'teitofo/article_part/figure'
require 'teitofo/builder/text_builder'

require 'pathname'

module TeiToFo
  module Builder
    class FigureBuilder
      include TextBuilder

      def initialize
        @fig = ArticlePart::Figure.new
      end

      attr_reader :fig

      def basename_path(value)
        path = Pathname.new(value)
        fig.graphic_basename = path.basename
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
