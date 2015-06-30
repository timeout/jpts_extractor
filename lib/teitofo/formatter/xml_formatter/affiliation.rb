module TeiToFo
  module Formatter
    module XmlFormatter
      class Affiliation

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(affiliation)
          @xml.tag!('fo:inline', {
            'font-weight': 'bold'
          }, "#{affiliation.label}")
          @xml.tag!('fo:inline', {}, "#{affiliation.addr}")
        end
      end
    end
  end
end
