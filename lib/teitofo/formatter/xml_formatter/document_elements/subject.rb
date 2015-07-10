module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_subject(subject)
          self.xml.tag!('fo:block', {
            'font-family': 'DroidSans',
            'font-size': '8pt',
            'padding-top': '18pt'
          }, upcase_subject(subject))
        end

        private
        def upcase_subject(subject)
          subject.upcase
        end
      end
    end
  end
end
