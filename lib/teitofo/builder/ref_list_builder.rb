require 'teitofo/article_part/ref_list'

module TeiToFo
  module Builder
    class RefListBuilder

      def initialize
        @ref_list = ArticlePart::RefList.new
      end

      attr_reader :ref_list

      def add_ref(ref)
        self.ref_list << ref
      end
      alias_method :<<, :add_ref
    end
  end
end
