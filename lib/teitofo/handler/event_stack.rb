require 'teitofo/stack'

module TeiToFo
  module Handler
    module EventStack

      def event_stack
        @event_stack
      end

      def push_event(event)
        @event_stack ||= Stack.new
        @event_stack.push(event)
      end

      def pop_event
        # p "popping #{@event_stack.top}..."
        @event_stack.pop
      end

      def top
        @event_stack.top
      end

      def each_event(&block)
        @event_stack.each(&block)
      end

      def print_event_stack
        p "STACK: #{@event_stack.map { |e| e.to_s}.join(' | ')}"
      end
    end
  end
end
