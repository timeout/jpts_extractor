require 'teitofo/formatter/xml_formatter/inline_text'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Text

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(text)
          text.each do |fragment|
            fragment.format(XmlFormatter::InlineText.new(@xml))
          end
        end

      end
    end
  end
end
