require 'jpts_extractor/article_part/journal_meta'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class JournalMeta

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   

      def format(journal_meta)
        self.xml.tag!('journal-meta') do
          self.xml.tag!('journal-id', {
            'journal-id-type': 'nlm-ta'
          }, 'PLoS ONE')
          self.xml.tag!('journal-id', { 
            'journal-id-type': "publisher-id"
          }, 'plos')
          self.xml.tag!('journal-id', {
            'journal-id-type': 'pmc'
          }, 'plosone')
          self.xml.tag!('journal-title-group') do
            self.xml.tag!('journal-title', {}, journal_meta.journal_title)
          end
          self.xml.tag!('issn', {
            'pub-type': 'epub'
          }, '1932-6203')
          self.xml.tag!('publisher') do
            self.xml.tag!('publisher-name', {}, 'Public Library of Science')
            self.xml.tag!('publisher-loc', {}, 'San Francisco, CA USA')
          end
        end
      end

    end
  end
end
