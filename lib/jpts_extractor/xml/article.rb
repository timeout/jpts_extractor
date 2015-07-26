require 'jpts_extractor/article'

require 'jpts_extractor/xml/front'                                
require 'jpts_extractor/xml/body'                                 
require 'jpts_extractor/xml/back'                                 

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Article                                                         

      def initialize                                                      
        @xml = ::Builder::XmlMarkup.new(indent: 2)                          
        self.xml.instruct!                                                
      end                                                                 

      attr_reader :xml   

      def format(article)
        self.xml.declare!(:DOCTYPE, :article, :PUBLIC, 
                          "-//NLM//DTD Journal Publishing DTD v3.0 20080202//EN",
                          "http://dtd.nlm.nih.gov/publishing/3.0/journalpublishing3.dtd")
        self.xml.tag!('article', {
          'xmlns:mml': 'http://www.w3.org/1998/Math/MathML', 
          'xmlns:xlink': 'http://www.w3.org/1999/xlink',
          'article-type': 'research-article', 
          'dtd-version': '3.0',
          'xml:lang': 'en'
        }) do

          self.xml.comment! 'front'
          article.front.format(Front.new(self.xml))

          self.xml.comment! 'body'
          article.body.format(Body.new(self.xml))

          self.xml.comment! 'back'
          article.back.format(Back.new(self.xml))

        end
      end
    end
  end
end
