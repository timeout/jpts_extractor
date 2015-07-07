require 'teitofo/formatter/xml_formatter/section'
require 'teitofo/formatter/xml_formatter/title_formatter'
require 'teitofo/formatter/xml_formatter/paragraph_formatter'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Abstract
        include TitleFormatter
        include ParagraphFormatter

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(abstract)

          if abstract.title?
            title_formatter(abstract.title)
          end

          if abstract.paragraph?
            paragraph_formatter(abstract.paragraph)
          end

          abstract.sections.each do |section|
            section.format(Section.new(self.xml))
          end if abstract.sections?
        end

      end
    end
  end
end
