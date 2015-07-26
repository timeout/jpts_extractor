require 'jpts_extractor/article_part/figure'
require 'jpts_extractor/xml/caption'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Figure

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   

      def format(figure)
        self.xml.tag!('fig') do 
          self.xml.tag!('object-id', {}, "#{figure.graphic_path}")
          self.xml.tag!('label', figure.label) if figure.label?
          figure.caption.format(Caption.new(self.xml)) if figure.caption?
        end
      end

    end
  end
end
