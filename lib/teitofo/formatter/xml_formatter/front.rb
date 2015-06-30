require 'teitofo/article_part/front'
require 'teitofo/formatter/xml_formatter/article_meta'

require 'builder'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Front

        def initialize(xml)
          @xml = xml
          @article_meta_formatter = ArticleMeta.new(self.xml)
        end

        attr_reader :xml, :journal_meta_formatter, :article_meta_formatter

        def format(front)
          front.article_meta.format(self.article_meta_formatter)
        end

      end
    end
  end
end
