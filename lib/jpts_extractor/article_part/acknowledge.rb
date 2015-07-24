module JPTSExtractor
  module ArticlePart
    class Acknowledge
      def initialize
        @sections = Array.new
      end

      attr_accessor :title, :paragraph, :label
      attr_reader :sections

      def title?
        not self.title.nil?
      end

      def paragraph?
        not self.paragraph.nil?
      end

      def label?
        not self.label.nil?
      end

      def sections?
        not sections.empty?
      end

      def add_section(subsection)
        @sections << subsection
      end
      alias_method :<<, :add_section

      def format(acknowledgement_formatter)
        acknowledgement_formatter.format(self)
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
