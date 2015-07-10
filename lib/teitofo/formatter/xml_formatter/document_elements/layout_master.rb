require 'teitofo/formatter/xml_formatter/document'

module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

          def layout_master
            xml.comment! 'layout master'
            xml.tag!('fo:layout-master-set') do
              xml.comment! 'definition of physical page'
              xml.tag!('fo:simple-page-master', {
                'master-name': Document.job_name,
                'page-height': Document.page_height,
                'page-width': Document.page_width,
                'margin-top': Document.margin_top,
                'margin-bottom': Document.margin_bottom,
                'margin-left': Document.margin_left,
                'margin-right': Document.margin_right
              }) do
                xml.comment! 'definition of printable areas'
                xml.comment! 'body dimensions'
                xml.tag!('fo:region-body', {
                  'margin-top': Document.body_margin_top,
                  'margin-bottom': Document.body_margin_bottom,
                })
                xml.comment! 'header dimensions (height)'
                xml.tag!('fo:region-before', {
                  extent: Document.header_extent,
                  precedence: Document.header_precedence
                })
                xml.comment! 'footer dimensions (height)'
                xml.tag!('fo:region-after', {
                  extent: Document.footer_extent,
                  precedence: Document.footer_precedence
                })
              end
            end
          end

      end
    end
  end
end
