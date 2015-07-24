module JPTSExtractor
  module ArticlePart
    class Caption

      attr_accessor :title, :paragraph

      def title?
        not self.title.nil?
      end

      def paragraph?
        not self.paragraph.nil?
      end

      def format(caption_formatter)
        caption_formatter.format(self)
      end
    end
  end
end
