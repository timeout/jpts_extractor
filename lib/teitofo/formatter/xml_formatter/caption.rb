module TeiToFo
  module Formatter
    module XmlFormatter
      class Caption

        def initialize(xml)
          @xml = xml
          @text_formatter = Text.new(@xml)
        end

        attr_reader :xml, :text_formatter

        def format(caption)
          caption.title.format(self.text_formatter) if caption.title?
          caption.paragraph.format(self.text_formatter) if caption.paragraph?
        end
      end
    end
  end
end
