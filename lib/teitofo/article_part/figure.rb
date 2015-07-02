module TeiToFo
  module ArticlePart
    class Figure

      attr_accessor :graphic_basename, :label, :caption

      def graphic_basename?
        not @graphic_basename.nil?
      end

      def label?
        not @label.nil?
      end

      def caption?
        not @caption.nil?
      end
      
      def to_s
        "#{self.graphic_basename}\n#{self.label}\n#{self.caption}"
      end
    end
  end
end
