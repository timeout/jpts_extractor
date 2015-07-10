require 'teitofo/article_part/front'
require 'teitofo/formatter/xml_formatter/article_meta'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Front

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(front)
          front.article_meta.format(ArticleMeta.new(self.xml))
        end

      end
    end
  end
end
