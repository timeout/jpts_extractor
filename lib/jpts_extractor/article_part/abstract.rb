module JPTSExtractor
  module ArticlePart
    class Abstract
      def initialize
        @sections = Array.new
      end

      attr_accessor :title, :paragraph
      attr_reader :sections

      def title?
        not self.title.nil?
      end

      def paragraph?
        not self.paragraph.nil?
      end

      def add_section(subsection)
        @sections << subsection
      end
      alias_method :<<, :add_section

      def sections?
        not sections.empty?
      end

      def format(abstract_formatter)
        abstract_formatter.format(self)
      end

      def to_s
        str = String.new
        str += "title: #{@title}" if title?
        str += "paragraph: #{@paragraph}" if paragraph?
        str += "sections: #{@sections.join('\n')}" if sections?
      end
    end
  end
end
