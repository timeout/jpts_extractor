module TeiToFo
  module ArticlePart
    class Back
      def initialize
      end

      attr_accessor :ref_list

      def format(back_formatter)
        back_formatter.format(self)
      end
    end
  end
end
