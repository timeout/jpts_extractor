require 'teitofo/formatter/xml_formatter/author'
require 'teitofo/formatter/xml_formatter/affiliation'
require 'teitofo/formatter/xml_formatter/abstract'

module TeiToFo
  module Formatter
    module XmlFormatter
      class ArticleMeta

        def initialize(xml)
          @xml = xml
          @author_formatter = Author.new(@xml)
          @affiliation_formatter = Affiliation.new(@xml)
          @abstract_formatter = Abstract.new(@xml)
        end

        attr_reader :xml, :author_formatter, :affiliation_formatter,
          :abstract_formatter

        def format(article_meta)

          xml.tag!('fo:block', {
            'margin-top': '10mm',
            'font-size': '10pt'
          }, article_meta.subject)

          xml.comment! 'article_meta title'
          xml.tag!('fo:block', {
            'text-align': 'start',
            'line-height': '24pt',
            'font-size': '18pt',
            'font-weight': 'bold'
          }, article_meta.article_title)
          xml.comment! 'authors'
          xml.tag!('fo:block', {
            'text-align': 'start',
            'line-height': '15pt',
            'font-weight': 'bold',
            'font-size': '10pt'
          }) do
            article_meta.each_author do |author|
              author.format(self.author_formatter)
            end
          end
          xml.comment! 'affiliation(s)'
          xml.tag!('fo:block', {
            'text-align': 'justify',
            'font-size': '8pt'
          }) do
            article_meta.each_affiliation do |affiliation|
              affiliation.format(self.affiliation_formatter)
            end
          end
          xml.comment! 'abstract'
          xml.tag!('fo:block', {
            'margin-top': '12mm'
          }) do 
            xml.tag!('fo:inline', {
              'line-height': '18pt',
              'font-size': '14pt'
            }, 'Abstract')
          end
          xml.tag!('fo:block', {
            'line-height': 'normal',
            'font-size': '10pt'
          }) do
            article_meta.abstract.format(self.abstract_formatter)
          end
        end

      end
    end
  end
end
