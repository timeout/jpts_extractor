require 'jpts_extractor/article_part/section'
require 'jpts_extractor/xml/table'
require 'jpts_extractor/xml/figure'
require 'jpts_extractor/xml/text'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Section

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   

      def format(section)
        self.xml.tag!('sec') do
          if section.title?
            self.xml.tag!('title', {}, "#{section.title}")
          end

          section.each(section) do |subsection|
            case subsection
            when JPTSExtractor::ArticlePart::Section
              subsection.format(self)
            when JPTSExtractor::ArticlePart::Text
              self.xml.tag!('p') do
                subsection.format(Text.new(self.xml))
              end
            when JPTSExtractor::ArticlePart::TableWrap
              subsection.format(Table.new(self.xml))
            when JPTSExtractor::ArticlePart::Figure
              subsection.format(Figure.new(self.xml))
            else
              #TODO:
            end
          end
        end
      end

    end
  end
end
