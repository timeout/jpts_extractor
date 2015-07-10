require 'teitofo/formatter/xml_formatter/section'
require 'teitofo/formatter/xml_formatter/title_formatter'
require 'teitofo/formatter/xml_formatter/paragraph_formatter'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Acknowledge
        include TitleFormatter
        include ParagraphFormatter

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(acknowledge)

          if acknowledge.label?
            # label_formatter(acknowledge.title)
          end

          if acknowledge.title?
            title_formatter(acknowledge.title)
          end

          if acknowledge.paragraph?
            paragraph_formatter(acknowledge.paragraph)
          end

          acknowledge.sections.each do |section|
            section.format(Section.new(self.xml))
          end if acknowledge.sections?
        end

      end
    end
  end
end

