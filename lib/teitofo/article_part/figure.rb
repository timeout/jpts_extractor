module TeiToFo
  module ArticlePart
    class Figure

      attr_accessor :graphic_path, :label, :caption

      def graphic_path?
        not @graphic_path.nil?
      end

      def label?
        not @label.nil?
      end

      def caption?
        not @caption.nil?
      end

      def format(figure_formatter)
        figure_formatter.format(self)
      end
      
      def to_s
        "#{self.graphic_basename}\n#{self.label}\n#{self.caption}"
      end
    end
  end
end
