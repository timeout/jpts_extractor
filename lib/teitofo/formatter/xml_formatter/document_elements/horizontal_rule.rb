module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def horizontal_rule(thickness)
          self.xml.comment! 'horizontal rule'
          self.xml.tag!('fo:block', {
            'line-height': "#{thickness}pt",
            margin: '0pt'
          }) do
            self.xml.tag!('fo:leader', {
              'leader-pattern': 'rule',
              'leader-length.optimum': '100%',
              color: 'gray',
              'rule-thickness': "#{thickness}pt"
            })
          end
        end
      end
    end
  end
end
