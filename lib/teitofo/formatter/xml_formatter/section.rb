require 'teitofo/formatter/xml_formatter/title_formatter'
require 'teitofo/formatter/xml_formatter/paragraph_formatter'
# require 'teitofo/formatter/xml_formatter/table_wrap'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Section
        include TitleFormatter
        include ParagraphFormatter

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(section)

          p "section class: #{section.class}"

          if section.title?
            title_formatter(section.title)
          end

          section.each do |subsection|
            case subsection
            when TeiToFo::ArticlePart::Section
              subsection.format(self)
            when TeiToFo::ArticlePart::Text
              paragraph_formatter(subsection)
            when TeiToFo::ArticlePart::TableWrap
              # subsection.format(self.table_wrap_formatter)
            when TeiToFo::ArticlePart::Figure
            else
              #TODO:
            end
          end
        end

      end
    end
  end
end
