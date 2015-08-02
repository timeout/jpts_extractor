require 'jpts_extractor/article_part/abstract'
require 'jpts_extractor/xml/text'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Abstract

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   

      def format(abstract)
        self.xml.tag!('abstract') do
          if abstract.title?
            self.xml.tag!('title') do
              Text.format(abstrac.title)
            end
          end

          if abstract.paragraph?
            self.xml.tag!('p', {}, "#{abstract.paragraph}")
          end

          if abstract.sections?
            abstract.sections.each do |section|
              section.format(Section.new(self.xml))
            end
          end
        end
      end

    end
  end
end
