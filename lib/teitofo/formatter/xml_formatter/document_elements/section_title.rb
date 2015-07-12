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
            Text.new(self.xml).format(section_title)
          end
        end

        def format_section_title(section_title)
          self.xml.tag!('fo:block', {
            'font-family': 'DroidSans',
            'font-size': '10pt',
            'font-weight': 'bold',
            'padding-top': '9pt'
          }) do
            Text.new(self.xml).format(section_title)
          end
        end

      end
    end
  end
end
