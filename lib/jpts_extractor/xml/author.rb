require 'jpts_extractor/article_part/author'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Author

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   

      def format(author)
        self.xml.tag!('contrib', {
          'contrib-type': 'author',
          'xlink:type': 'simple'
        }) do
          self.xml.tag!('name', {
            'name-style': 'western'
          }) do
            self.xml.tag!('surname', {}, author.surname)
            self.xml.tag!('given-names', {}, author.given_names)
          end
          author.refs.each do |ref|
            self.xml.tag!('xref', {
              'ref-type': 'aff'
            }) do
              self.xml.tag!('sup', {}, ref)
            end
          end
        end
      end

    end
  end
end
