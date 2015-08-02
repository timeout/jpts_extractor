require 'jpts_extractor/article_part/ref'
require 'jpts_extractor/xml/text'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Reference                                                         

      def initialize(xml, index)
        @xml, @index = xml, index
      end                                                                 

      attr_reader :xml   

      def format(reference)
        self.xml.tag!('ref') do
          self.xml.tag!('label', {}, "#{@index}")
          self.xml.tag!('element-citation', {
            'publication-type': "#{reference.publication_type}",
            'xlink:type': 'simple'
          }) do

            self.xml.comment! 'authors'
            self.xml.tag!('person-group', {
              'person-group-type': 'author'
            }) do
              reference.author_names.each do |author|
                self.xml.tag!('name', {
                  'name-style': 'western'
                }) do
                  self.xml.tag!('surname', {}, author.surname)
                  self.xml.tag!('given-names', {}, author.given_names)
                end
              end
            end if reference.author_names?

            self.xml.comment!('editors') if reference.editor_names?
            self.xml.tag!('person-group', {
              'person-group-type': 'editor'
            }) do
              reference.editor_names.each do |editor|
                self.xml.tag!('name', {
                  'name-style': 'western'
                }) do
                  self.xml.tag!('surname', {}, editor.surname)
                  self.xml.tag!('given_names', {}, editor.given_names)
                end
              end 
            end if reference.editor_names?
            # self.xml.tag!('source', {}, reference.source) if reference.source?
            self.xml.tag!('source') do 
              Text.new(self.xml).format(reference.source)
            end if reference.source?
            self.xml.tag!('article-title', {}, reference.article_title) if reference.article_title?
            self.xml.tag!('chapter-title', {}, reference.chapter_title) if reference.chapter_title?
            self.xml.tag!('volume', {}, reference.volume) if reference.volume?
            self.xml.tag!('year', {}, reference.year) if reference.year?
            self.xml.tag!('month', {}, reference.month) if reference.month?
            self.xml.tag!('day', {}, reference.day) if reference.day?
            self.xml.tag!('fpage', {}, reference.fpage) if reference.fpage?
            self.xml.tag!('lpage', {}, reference.lpage) if reference.lpage?
            self.xml.tag!('issue', {}, reference.issue) if reference.issue?
            self.xml.tag!('publisher-loc', {}, reference.publisher_loc) if reference.publisher_loc?
            self.xml.tag!('publisher-name', {}, reference.publisher_name) if reference.publisher_name?
          end
        end
      end

    end
  end
end
