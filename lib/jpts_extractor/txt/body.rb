require 'jpts_extractor/article_part/body'

module JPTSExtractor
  module Txt
    class Body
      def initialize(str)
        @str = str
      end

      attr_accessor :str

      def format(body)
        body.sections.each do |section|
          @str += "#{section.title}\n\n" if section.title?
          section.each(section) do |subsection|
            @str += "#{subsection}\n\n" if subsection.is_a? JPTSExtractor::ArticlePart::Text
          end
        end
        self.str
      end
    end
  end
end
