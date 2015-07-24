module JPTSExtractor
  module Handler
    module HandlerHelper
      def switch_text_on
        @is_text = true
      end

      def switch_text_off
        @is_text = false
      end

      def text?
        @is_text
      end

      def switch_attr_on
        @is_attr = true
      end

      def switch_attr_off
        @is_attr = false
      end

      def attr?
        @is_attr
      end
    end
  end
end
