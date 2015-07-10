module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_title(title)
          self.xml.tag!('fo:block', {
            'font-family': 'DroidSans',
            'font-size': '18pt',
            'padding-top': '8pt',
          }) do 
            Text.new(self.xml).format(title)
          end
        end

      end
    end
  end
end
