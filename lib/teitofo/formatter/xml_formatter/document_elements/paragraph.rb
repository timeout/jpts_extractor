module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_paragraph(paragraph)
          self.xml.tag!('fo:block', {
            'font-family': 'Gentium',
            padding: '6pt',
            'font-size': '10pt',
            'line-height': '1.5'
          }) do
            Text.new(self.xml).format(paragraph)
          end
        end

      end
    end
  end
end
