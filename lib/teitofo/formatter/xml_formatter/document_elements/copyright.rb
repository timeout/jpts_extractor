module TeiToFo
  module Formatter
    module XmlFormatter
      module Document

        def format_copyright(article_meta)
          copyright_symbol = "\u00A9"
          notice = %{This is an open
          access article distributed under the terms of the
          Creative Commons Attribution License, which permits
          unrestricted use, distribution, and reproduction in any
          medium, provided the original author and source are
          credited.}

          self.xml.tag!('fo:block', {
            padding: '4pt'
          }) do
            self.xml.tag!('fo:inline', {
              'font-family': 'DroidSans',
              'font-weight': 'bold'
            }, 'Copyright: ')
            self.xml.tag!('fo:inline', {}, 
                          "#{copyright_symbol.encode('utf-8')}" + 
                          " #{article_meta.copyright_year} " + 
                          "#{article_meta.copyright_holder}. " +
                         notice)
          end
        end

      end
    end
  end
end
