require 'teitofo/formatter/xml_formatter/section'

module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_abstract(abstract)

          self.xml.tag!('fo:block', {
            'background-color': '#DEDEDE',
            margin: '6pt',
            padding: '8pt'
          }) do
            self.xml.tag!('fo:block', {
              'font-family': 'DroidSans',
              'font-weight': 'bold',
              'font-size': '12pt'
            }, 'Abstract')

            if abstract.title?
              format_abstract_section_title(abstract.title)
            end

            if abstract.paragraph?
              format_paragraph(abstract.paragraph)
            end

            abstract.sections.each do |section|
              section.format(Section.new(self.xml))
            end if abstract.sections?

          end
        end
      end
    end
  end
end
