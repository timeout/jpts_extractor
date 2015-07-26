require 'jpts_extractor/article_part/body'
require 'jpts_extractor/xml/section'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Body

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   

      def format(body)
        self.xml.tag!('body') do
          body.sections.each do |section|
            section.format(Section.new(self.xml))
          end
        end
      end

    end
  end
end
