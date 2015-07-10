module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_publication_info(article_meta)
          self.xml.tag!('fo:block', {
            padding: '4pt'
          }) do
            self.xml.tag!('fo:inline', {
              'font-weight': 'bold'
            }, 'Received: ') 
            self.xml.tag!('fo:inline', {}, 
                          "#{format_date(article_meta.received_date)}; ")
            self.xml.tag!('fo:inline', {
              'font-weight': 'bold'
            }, 'Accepted: ')
            self.xml.tag!('fo:inline', {}, 
                          "#{format_date(article_meta.accepted_date)}; ")
            self.xml.tag!('fo:inline', {
              'font-weight': 'bold'
            }, 'Published: ')
            self.xml.tag!('fo:inline', {}, 
                          "#{format_date(article_meta.published_date)}")
          end
        end

      end
    end
  end
end
