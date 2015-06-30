require 'teitofo/article'
require 'teitofo/formatter/xml_formatter/page_configuration'
require 'teitofo/formatter/xml_formatter/front'
require 'teitofo/formatter/xml_formatter/body'
require 'teitofo/formatter/xml_formatter/back'

require 'builder'

module TeiToFo
  module Formatter
    module XmlFormatter
      class Article

        def initialize(page_configuration = PageConfiguration.new)
          self.page_configuration = page_configuration
          @xml = ::Builder::XmlMarkup.new(indent: 2)
          @xml.instruct!
          @front_formatter = Front.new(self.xml)
          @body_formatter = Body.new(self.xml)
          @back_formatter = Back.new(self.xml)
        end

        attr_reader :xml, :front_formatter, :body_formatter, :back_formatter

        def format(article)
          xml.tag!('fo:root', {'xmlns:fo': 'http://www.w3.org/1999/XSL/Format'}) do
            xml.comment! 'layout master'
            xml.tag!('fo:layout-master-set') do
              xml.comment! 'page specification'
              xml.tag!('fo:simple-page-master', {
                'page-height': page_configuration.page_height,
                'page-width': page_configuration.page_width,
                'margin-top': page_configuration.margin_top,
                'margin-bottom': page_configuration.margin_bottom,
                'margin-left': page_configuration.margin_left,
                'margin-right': page_configuration.margin_right,
                'master-name': 'article-page'
              }) do
                xml.comment! 'main body area'
                xml.tag!('fo:region-body', {
                  'region-name': 'xsl-region-body',
                  'margin-top': '12mm',
                  'margin-bottom': '12mm'
                })
                xml.comment! 'header area'
                xml.tag!('fo:region-before', {
                  'region-name': 'xsl-region-before',
                  extent: '25mm'
                })
                xml.comment! 'footer area'
                xml.tag!('fo:region-after', {
                  'region-name': 'xsl-refion-after',
                  extent: '25mm'
                })
              end
            end

            xml.comment! 'pagination specification'
            xml.tag!('fo:page-sequence', {
              'master-reference': 'article-page',
              'xml:lang': 'en'
            }) do
              xml.comment! 'document title'
              xml.tag!('fo:title', {}, document_title(article))
              xml.comment! 'header definition'
              xml.tag!('fo:static-content', {
                'flow-name': 'xsl-region-before'
              }) do
                xml.tag!('fo:block-container', {
                  position: 'absolute'
                }) do
                  xml.tag!('fo:block') do
                    xml.tag!('fo:external-graphic', {
                      src: page_configuration.logo_image,
                      'content-width': '38mm'
                    })
                  end
                  xml.tag!('fo:block', {
                    'line-height': '3pt'
                  }) do
                    xml.tag!('fo:leader', {
                      'leader-pattern': 'rule',
                      'leader-length.optimum': '100%',
                      'color': page_configuration.ornament_foreground_colour,
                      'rule-thickness': '2pt'
                    })
                  end
                end
              end
              xml.tag!('fo:flow', {
                'flow-name': 'xsl-region-body'
              }) do
                xml.comment! 'content'
                xml.tag!('fo:block-container', {
                  'margin-left': '25mm',
                  'text-align': 'justify'
                }) do
                  xml.comment! 'front'
                  article.front.format(self.front_formatter)
                  xml.comment! 'body'
                  article.body.format(self.body_formatter)
                  xml.comment! 'back'
                  article.back.format(self.back_formatter)
                end
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
