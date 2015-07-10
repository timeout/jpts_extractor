module TeiToFo
  module Formatter
    module XmlFormatter
      module ParagraphFormatter

        def paragraph_formatter(text)
          self.xml.tag!('fo:block', {
            # format style for titles
            'font-family': "Gentium", 
            'font-weight': "normal",
            'font-style': "normal",
            'font-size': '9pt',
            'line-height': '2',
            'text-indent': '34pt'
          }) do
            text.format(Text.new(self.xml))
          end
        end

      end
    end
  end
end
