require 'jpts_extractor/article_part/text'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Text

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   


      def format(text)
        text.each do |fragment|
          case fragment
          when JPTSExtractor::ArticlePart::InlineText::InlineText
            self.xml.text! "#{fragment}"
          when JPTSExtractor::ArticlePart::InlineText::ItalicText
            self.xml.tag!('italic', {}, "#{fragment.text}")
          when JPTSExtractor::ArticlePart::InlineText::BoldText
            self.xml.tag!('bold', {}, "#{fragment.text}")
          when JPTSExtractor::ArticlePart::InlineText::MonospaceText
            self.xml.tag!('monospace', {}, "#{fragment.text}")
          when JPTSExtractor::ArticlePart::InlineText::Citation
            self.xml.tag!('xref', {
              'ref-type': 'bibr'
            }, "#{fragment.text}")
          end
        end
      end

    end
  end
end
