module TeiToFo
  module Formatter
    module XmlFormatter
      class InlineText
        def initialize(xml)
          @xml = xml
        end

        def format(inline_text)
          @xml.tag!('fo:inline', inline_text.styles, inline_text.text)
        end

        def output
          @xml.target!
        end
      end
    end
  end
end
