module TeiToFo
  module Formatter
    module XmlFormatter
      class Author

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(author)
          @xml.tag!('fo:inline', {}, "#{author.given_names} #{author.surname}")
          @xml.tag!('fo:inline', {
            'vertical-align': 'super',
            'font-size': '8pt'
          }, "#{author.refs.join(', ')}")
        end
      end
    end
  end
end
