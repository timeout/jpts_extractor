require 'jpts_extractor/article_part/back'
require 'jpts_extractor/xml/section'
require 'jpts_extractor/xml/reference'
require 'jpts_extractor/xml/text'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Back                                                         

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   

      def format(back)
        self.xml.tag!('back') do
          if back.acknowledge?
            self.xml.comment! 'acknowledgement'
            self.xml.tag!('ack') do
              self.xml.comment! 'label'
              self.xml.tag!('label') do
                back.acknowledge.label.format(Text.new(self.xml))
              end if back.acknowledge.label?

              self.xml.comment! 'title'
              self.xml.tag!('title') do
                back.acknowledge.title.format(Text.new(self.xml))
              end if back.acknowledge.title?

              self.xml.comment! 'paragraph'
              self.xml.tag!('paragraph') do
                back.acknowledge.paragraph.format(Text.new(self.xml))
              end if back.acknowledge.paragraph?

              self.xml.comment! 'section'
              back.acknowledge.sections.each do |section|
                section.format(Section.new(self.xml))
              end if back.acknowledge.sections?
            end
          end
          
          self.xml.comment! 'end references'
          self.xml.tag!('ref-list') do
            self.xml.tag!('title', {}, 'References')
            back.ref_list.each_with_index do |reference, index|
              reference.format(Reference.new(self.xml, (index += 1)))
            end
          end
        end
      end
    end
  end
end

