module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_conflict(conflict)
          self.xml.tag!('fo:block', {
            padding: '4pt'
          }) do
            self.xml.tag!('fo:inline', {
              'font-weight': 'bold'
            }, 'Competing Interests: ') 
            Text.new(self.xml).format(conflict)
          end
        end

      end
    end
  end
end
