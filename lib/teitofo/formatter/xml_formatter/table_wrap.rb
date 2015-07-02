require 'teitofo/formatter/xml_formatter/table'

module TeiToFo
  module Formatter
    module XmlFormatter
      class TableWrap

        def initialize(xml)
          @xml = xml
          @table_formatter = Table.new(@xml)
        end

        attr_reader :xml, :table_formatter

        def format(table_wrap)
          table_wrap.table.format(self.table_formatter)
        end

      end
    end
  end
end
