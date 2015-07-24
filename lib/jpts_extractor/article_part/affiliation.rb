module JPTSExtractor
  module ArticlePart
    class Affiliation
      def initialize(label, addr)
        @label, @addr = label, addr
      end

      attr_reader :label, :addr

      def format(affiliation_formatter)
        affiliation_formatter.format(self)
      end

      def to_s
        "#{self.addr} [#{self.label}]"
      end
    end
  end
end
