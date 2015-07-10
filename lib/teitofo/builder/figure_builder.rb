require 'teitofo/article_part/figure'
require 'teitofo/builder/text_builder'
require 'teitofo/reader/reader'

module TeiToFo
  module Builder
    class FigureBuilder
      include TextBuilder

      def initialize
        @fig = ArticlePart::Figure.new
      end

      attr_reader :fig

      def basename_path(value)
        fig.graphic_path = TeiToFo::Reader
          .graphics_directory + Pathname.new(value).basename.to_s
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
