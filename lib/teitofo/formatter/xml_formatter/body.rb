require 'teitofo/article_part/body'
require 'teitofo/formatter/xml_formatter/section'

require 'builder'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Body

        def initialize(xml)
          @xml = xml
          @section_formatter = Section.new(@xml)
        end

        attr_reader :xml, :section_formatter

        def format(body)
          body.each do |section|
            section.format(self.section_formatter)
          end
        end

      end
    end
  end
end
