module TeiToFo
  module ArticlePart
    class Body
      include Enumerable
      
      def initialize
        @sections = Array.new
      end

      attr_reader :sections

      def add_section(subsection)
        @sections << subsection
      end
      alias_method :<<, :add_section

      def each(&block)
        self.sections.each(&block)
      end

      def format(body_formatter)
        body_formatter.format(self)
      end

    end
  end
end
