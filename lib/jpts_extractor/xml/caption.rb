require 'jpts_extractor/article_part/caption'
require 'jpts_extractor/xml/text'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Caption

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   

      def format(caption)
        self.xml.tag!('caption') do 
          self.xml.tag!('title', {}) do
            caption.title.format(Text.new(self.xml))
          end if caption.title?

          self.xml.tag!('p') do
            caption.paragraph.format(Text.new(self.xml))
          end if caption.paragraph?
        end
      end

    end
  end
end
