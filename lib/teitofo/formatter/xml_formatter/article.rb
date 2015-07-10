require 'teitofo/article'
require 'teitofo/formatter/xml_formatter/document_elements/layout_master'
require 'teitofo/formatter/xml_formatter/document_elements/header'
require 'teitofo/formatter/xml_formatter/document_elements/footer'

require 'teitofo/formatter/xml_formatter/page_configuration'
require 'teitofo/formatter/xml_formatter/front'
require 'teitofo/formatter/xml_formatter/body'
require 'teitofo/formatter/xml_formatter/back'

require 'builder'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Article
        include Document

        def initialize(page_configuration = PageConfiguration.new)
          self.page_configuration = page_configuration
          @xml = ::Builder::XmlMarkup.new(indent: 2)
          @xml.instruct!
        end

        attr_reader :xml

        def format(article)
          xml.tag!('fo:root', {'xmlns:fo': 'http://www.w3.org/1999/XSL/Format'}) do

            layout_master

            xml.comment! 'pagination specification'
            xml.tag!('fo:page-sequence', {
              'master-reference': Document.job_name,
              'xml:lang': 'en'
            }) do
              xml.comment! 'document title'
              xml.tag!('fo:title', {}, document_title(article))

              format_header

              format_footer

              xml.tag!('fo:flow', {
                'flow-name': 'xsl-region-body'
              }) do
                xml.comment! 'content'
                xml.comment! 'front'
                article.front.format(Front.new(self.xml))
                xml.comment! 'body'
                article.body.format(Body.new(self.xml))
                xml.comment! 'back'
                article.back.format(Back.new(self.xml))
              end
            end
          end
        end

        def output
          @xml.target!
        end

        private
        attr_accessor :page_configuration

        def document_title(article)
          article.front.journal_meta.journal_title
        end
      end
    end
  end
end
