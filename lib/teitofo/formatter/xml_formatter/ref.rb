module TeiToFo
  module Formatter
    module XmlFormatter
      class Ref

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(ref)
          if ref.author_names?
            @xml.tag!('fo:inline', {}, 
                      "#{ref.author_names.map { |name| name.to_s }.join(', ') }")
          end
          @xml.tag!('fo:inline', {}, "(#{ref.year})") if ref.year?
          @xml.tag!('fo:inline', {}, "#{ref.article_title}") if ref.article_title?
          @xml.tag!('fo:inline', {}, "#{ref.source}") if ref.source?
          @xml.tag!('fo:inline', {}, "#{ref.issue}") if ref.issue?
          @xml.tag!('fo:inline', {}, "#{ref.volume}:") if ref.volume?
          @xml.tag!('fo:inline', {}, "#{ref.fpage}-#{ref.lpage}") if ref.fpage? and ref.lpage?
        end

      end
    end
  end
end
