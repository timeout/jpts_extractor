require 'teitofo/formatter/xml_formatter/document'
require 'teitofo/formatter/xml_formatter/table_wrap'
require 'teitofo/formatter/xml_formatter/figure'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Section
        include Document

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(section)

          if section.title?
            format_section_title(section.title)
          end

          section.each do |subsection|
            case subsection
            when TeiToFo::ArticlePart::Section
              subsection.format(self)
            when TeiToFo::ArticlePart::Text
              format_paragraph(subsection)
            when TeiToFo::ArticlePart::TableWrap
              TableWrap.new(self.xml).format(subsection)
            when TeiToFo::ArticlePart::Figure
              Figure.new(self.xml).format(subsection)
            else
              #TODO:
            end
          end
        end

      end
    end
  end
end
