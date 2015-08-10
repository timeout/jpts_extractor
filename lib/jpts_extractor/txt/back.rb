require 'jpts_extractor/article_part/back'

module JPTSExtractor
  module Txt
    class Back
      def initialize(str)
        @str = str
      end

      attr_accessor :str

      def format(back)
        @str +=  "#{back.acknowledge.label}\n " if back.acknowledge.label?
        @str += "#{back.acknowledge.title}\n\n" if back.acknowledge.title?
        @str += "#{back.acknowledge.paragraph}\n\n" if back.acknowledge.paragraph?

        back.acknowledge.sections.each do |section|
          section.each(section) do |subsection|
            @str += "#{subsection}\n\n" if subsection.is_a? JPTSExtractor::ArticlePart::Text
          end
        end if back.acknowledge.sections?

        back.ref_list.each_with_index do |reference, index|
          @str += "#{index}. " 

          if reference.author_names?
            authors = reference.author_names.map do |name|
              "#{name.surname}, #{name.given_names}"
            end.join(', ')
            @str += "#{authors}"
          end

          if reference.editor_names?
            editors = reference.editor_names.map do |name|
              "#{name.surname}, #{name.given_names}"
            end.join(', ')
            @str += "#{editors}"
          end
          @str += '. ' if reference.author_names? or reference.editor_names?

          @str += "#{reference.article_title}. " if reference.article_title?
          @str += "#{reference.source}. " if reference.source?
          @str += "#{reference.chapter_title}" if reference.chapter_title?
          @str += "#{reference.volume}: " if reference.volume?
          @str += "#{reference.year}; " if reference.year?
          @str += "#{reference.month} " if reference.month?
          @str += "#{reference.day} " if reference.day?
          @str += "#{reference.fpage}" if reference.fpage?
          @str += "-#{reference.lpage}." if reference.lpage?
          @str += "#{reference.issue}" if reference.issue?
          @str += "#{reference.publisher_loc}: " if reference.publisher_loc?
          @str += "#{reference.publisher_name}." if reference.publisher_name?
          @str += "\n"
        end

        self.str
      end
    end
  end
end
