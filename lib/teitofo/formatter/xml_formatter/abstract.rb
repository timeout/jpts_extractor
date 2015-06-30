require 'teitofo/formatter/xml_formatter/text_block'
require 'teitofo/formatter/xml_formatter/section'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Abstract

        def initialize(xml)
          @xml = xml
          @text_block_formatter = TextBlock.new(@xml)
          @section_formatter = Section.new(@xml)
        end

        attr_reader :xml, :text_block_formatter, :section_formatter

        def format(abstract)
          format_title(abstract.title) if abstract.title?
          abstract.paragraph.format(text_block_formatter) if abstract.paragraph?
          abstract.sections.each do |section|
            section.format(self.section_formatter)
          end if abstract.sections?
        end

        private
        def format_title(abstract_title)
          @xml.tag!('fo:block', {
            'font-weight': 'bold',
            'line-height': '18pt',
            'font-size': '14pt'
          }) do
            xml.tag!('fo:inline', {}, abstract_title)
          end
        end


      end
    end
  end
end
