require 'teitofo/article_part/back'
require 'teitofo/formatter/xml_formatter/ref_list'
require 'teitofo/formatter/xml_formatter/acknowledge'

require 'builder'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Back

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(back)
          back.ref_list.format(RefList.new(@xml))
          back.acknowledge.format(Acknowledge.new(@xml))
        end

      end
    end
  end
end
