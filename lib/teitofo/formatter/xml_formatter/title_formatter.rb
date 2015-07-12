require 'teitofo/formatter/xml_formatter/text'

module TeiToFo
  module Formatter
    module XmlFormatter
      module TitleFormatter

        def title_formatter(text)
          self.xml.tag!('fo:block', {
            'font-family': 'DroidSans',
            'font-size': '11pt',
            'font-weight': 'bold',
            'padding-top': '9pt'
          }) do
            text.format(Text.new(self.xml))
          end
        end

      end
    end
  end
end
