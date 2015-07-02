module TeiToFo
  module ArticlePart
    class TableWrap

      attr_accessor :table, :label, :caption

      def format(table_wrap_formatter)
        table_wrap_formatter.format(self)
      end
    end
  end
end
