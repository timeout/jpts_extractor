require 'teitofo/article_part/back'

module TeiToFo
  module Builder
    class BackBuilder
      def initialize
        @back = ArticlePart::Back.new
      end

      attr_reader :back

      def ref_list= (ref_list)
        @back.ref_list = ref_list
      end

      def ack= (acknowledge)
        @back.acknowledge = acknowledge
      end
    end
  end
end
