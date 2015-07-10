module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_affiliations(article_meta)
          self.xml.tag!('fo:block', {
            'font-family': 'DroidSans',
            'text-align': 'justify',
            'font-size': '8pt',
            'padding-top': '6pt',
            'padding-bottom': '6pt'
          }) do
            article_meta.each_affiliation do |affiliation|
              self.xml.tag!('fo:inline', {
                'font-weight': 'bold'
              }, "#{affiliation.label}")
              self.xml.tag!('fo:inline', {}, "#{affiliation.addr}")
            end
          end
        end

      end
    end
  end
end
