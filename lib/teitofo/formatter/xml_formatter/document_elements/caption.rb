module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_caption(caption)
          self.xml.comment! 'caption'
          self.xml.comment! 'title'
          self.xml.tag!('fo:inline', {
            'font-weight': 'bold'
          }, caption.title.to_s) if caption.title?
          self.xml.comment! 'paragraph'

          format_paragraph caption.paragraph if caption.paragraph?
        end

      end
    end
  end
end
