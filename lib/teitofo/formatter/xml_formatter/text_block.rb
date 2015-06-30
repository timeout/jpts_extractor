require 'teitofo/formatter/xml_formatter/inline_text'

module TeiToFo
  module Formatter
    module XmlFormatter
      class TextBlock

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(text_block)
          @xml.tag!('fo:block', text_block.styles ) do
            text_block.each do |fragment|
              fragment.format(XmlFormatter::InlineText.new(@xml))
            end
          end
        end

      end
    end
  end
end
