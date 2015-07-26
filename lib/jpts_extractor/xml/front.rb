require 'jpts_extractor/article_part/front'

require 'jpts_extractor/xml/journal_meta'
require 'jpts_extractor/xml/article_meta'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Front                                                         

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   

      def format(front)
        self.xml.tag!('front') do
          front.journal_meta.format(JournalMeta.new(self.xml))
          front.article_meta.format(ArticleMeta.new(self.xml))
        end
      end
    end
  end
end
