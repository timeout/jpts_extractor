require 'teitofo/formatter/xml_formatter/text'

module TeiToFo
  module Formatter
    module XmlFormatter
      module TitleFormatter

        def title_formatter(text)
          self.xml.tag!('fo:block', {
            # format style for titles
            'font-size': '9pt',
            'font-family': 'sans-serif',
            'font-weight': 'bold'
          }) do
            text.format(Text.new(self.xml))
          end
        end

      end
    end
  end
end
