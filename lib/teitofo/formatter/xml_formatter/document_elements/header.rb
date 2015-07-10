require 'teitofo/formatter/xml_formatter/document_elements/horizontal_rule'

module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_header
          self.xml.tag!('fo:static-content', {
            'flow-name': 'xsl-region-before'
          }) do
            self.xml.tag!('fo:table', {
              'table-layout': 'fixed',
              width: '100%',
              'font-size': '9pt'
            }) do
              self.xml.tag!('fo:table-column', {
                'column-number': '1',
                'column-width': 'proportional-column-width(1)'
              })
              self.xml.tag!('fo:table-column', {
                'column-number': '2',
                'column-width': 'proportional-column-width(1)'
              })
              self.xml.tag!('fo:table-body') do
                self.xml.tag!('fo:table-row', {
                  'font-size': '9pt',
                  'height': '16pt',
                  'padding-bottom': '3pt'
                }) do
                  self.xml.tag!('fo:table-cell', {
                    'display-align': 'after'
                  }) do
                    self.xml.tag!('fo:block', {
                      'text-align': 'left'
                    }, 'something')   # TODO:
                  end
                  self.xml.tag!('fo:table-cell', {
                    'display-align': 'after'
                  }) do
                    self.xml.tag!('fo:block', {
                      'text-align': 'right'
                    }, 'or_other')    # TODO:
                  end
                end
              end
            end

            horizontal_rule(2)

          end
        end

      end
    end
  end
end

