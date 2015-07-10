module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_abstract_section_title(section_title)
          self.xml.tag!('fo:inline', {
            'font-family': 'DroidSans',
            'font-size': '10pt',
            'font-weight': 'bold',
            'font-style': 'italic'
          }) do
            text.format(Text.new(self.xml))
          end
        end

        def format_section_title(section_title)
          self.xml.tag!('fo:inline', {
            'font-family': 'DroidSans',
            'font-size': '10pt',
            'font-weight': 'bold',
          }) do
            text.format(Text.new(self.xml))
          end
        end

      end
    end
  end
end
