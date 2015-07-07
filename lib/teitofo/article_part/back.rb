module TeiToFo
  module ArticlePart
    class Back

      attr_accessor :ref_list

      def format(back_formatter)
        back_formatter.format(self)
      end
    end
  end
end
