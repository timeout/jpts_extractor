require 'teitofo/formatter/xml_formatter/document'

module TeiToFo
  module Formatter
    module XmlFormatter
      class ArticleMeta
        include Document

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(article_meta)

          self.xml.comment! 'subject'
          format_subject(article_meta.subject)

          self.xml.comment! 'title'
          format_title(article_meta.article_title)

          self.xml.comment! 'authors'
          format_authors(article_meta.authors)

          self.xml.comment! 'affiliation(s)'
          format_affiliations(article_meta)

          self.xml.comment! 'preface'

          self.xml.tag!('fo:block', {
            'border-style': 'solid',
            'border-width': '1.5pt'
          }) do
            self.xml.comment! 'abstract'
            format_abstract(article_meta.abstract)

            self.xml.tag!('fo:block', {
              'font-family': 'DroidSans',
              'margin-left': '6pt',
              'margin-right': '6pt',
              'font-size': '8pt'
            }) do
              self.xml.comment! 'article meta information'
              format_publication_info(article_meta)

              self.xml.comment! 'copyright'
              format_copyright(article_meta)

              self.xml.comment! 'conflicting interests'
              format_conflict(article_meta.conflict)
            end
          end

        end

      end
    end
  end
end
