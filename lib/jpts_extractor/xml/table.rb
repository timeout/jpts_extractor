require 'jpts_extractor/article_part/table_wrap'
require 'jpts_extractor/article_part/table'
require 'jpts_extractor/article_part/table_cell'

require 'jpts_extractor/xml/caption'
require 'jpts_extractor/xml/text'

require 'builder'                                                       

module JPTSExtractor
  module XML
    class Table

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   

      def format(table_wrap)
        self.xml.tag!('table-wrap') do 
          self.xml.tag!('label', {}, "#{table_wrap.label}")
          if table_wrap.caption?
            table_wrap.caption.format(Caption.new(self.xml))
          end
          self.xml.tag!('alternatives') do
            self.xml.comment! 'dummy alternative'
            self.xml.tag!('graphic', {
              'xlink:href': 'dummy/link',
              'xlink:type': 'simple'
            })
            self.xml.comment! 'table'
            self.xml.tag!('table') do
              self.xml.tag!('colgroup') do
                table_wrap.table.columns.each do |column|
                  self.xml.tag!('col', column)
                end
              end
              self.xml.comment 'table header'
              self.xml.tag!('thead') do
                table_wrap.table.header_rows.each do |header_row|
                  self.xml.tag!('tr') do
                    header_row.each do |cell|
                      self.xml.tag!('td', cell.styles) do 
                        cell.text.format(Text.new(self.xml))
                      end
                    end
                  end
                end
              end
              self.xml.comment 'table body'
              self.xml.tag!('tbody') do
                table_wrap.table.body_rows.each do |body_row|
                  self.xml.tag!('tr') do
                    body_row.each do |cell|
                      self.xml.tag!('td', cell.styles) do 
                        cell.text.format(Text.new(self.xml))
                      end
                    end
                  end
                end
              end
            end
          end

        end
      end
    end
  end
end
