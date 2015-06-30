require 'teitofo/article_part/back'
require 'teitofo/formatter/xml_formatter/ref_list'

require 'builder'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Back

        def initialize(xml)
          @xml = xml
          @ref_list_formatter = RefList.new(@xml)
        end

        attr_reader :xml, :ref_list_formatter

        def format(back)
          back.ref_list.format(ref_list_formatter)
        end

      end
    end
  end
end
