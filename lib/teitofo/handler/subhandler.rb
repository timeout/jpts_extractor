require 'teitofo/handler/handler_helper'
require 'teitofo/handler/event_stack'

module TeiToFo
  module Handler
    class SubHandler
      include HandlerHelper
      include EventStack

      def on_start_element(name)
      end

      def on_end_element(name)
      end

      def on_attr(name, value)
      end

      def on_text(value)
      end
    end
  end
end
