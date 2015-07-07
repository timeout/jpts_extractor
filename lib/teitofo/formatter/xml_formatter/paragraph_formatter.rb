module TeiToFo
  module Formatter
    module XmlFormatter
      module ParagraphFormatter

        def paragraph_formatter(text)
          self.xml.tag!('fo:block', {
            # format style for titles
            'font-size': '8pt',
            'font-family': 'serif'
          }) do
            text.format(Text.new(self.xml))
          end
        end

      end
    end
  end
end
