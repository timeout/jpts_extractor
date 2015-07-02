require 'teitofo/formatter/xml_formatter/text_block'
require 'teitofo/formatter/xml_formatter/table_wrap'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Section

        def initialize(xml)
          @xml = xml
          @text_block_formatter = TextBlock.new(@xml)
          @table_wrap_formatter = TableWrap.new(@xml)
        end

        attr_reader :xml, :text_block_formatter, :table_wrap_formatter

        def format(section)
          format_title(section.title) if section.title?
          section.each do |subsection|
            # if subsection.class == ArticlePart::TextBlock
            #   subsection.format(text_block_formatter)
            # end
            case subsection
            when TeiToFo::ArticlePart::Section
              subsection.format(self)
            when TeiToFo::ArticlePart::TextBlock
              subsection.format(self.text_block_formatter)
            when TeiToFo::ArticlePart::TableWrap
              subsection.format(self.table_wrap_formatter)
            else
              #TODO:
            end
          end
        end

        private
        def format_title(abstract_title)
          @xml.tag!('fo:block', {
            'margin-top': '8pt',
            'font-weight': 'bold',
            'line-height': '16pt',
            'font-size': '11pt'
          }) do
            xml.tag!('fo:inline', {}, abstract_title)
          end
        end

      end
    end
  end
end
