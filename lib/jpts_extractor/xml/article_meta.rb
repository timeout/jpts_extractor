require 'jpts_extractor/article_part/article_meta'

require 'jpts_extractor/xml/author'
require 'jpts_extractor/xml/abstract'

require 'builder'                                                       
require 'date'

module JPTSExtractor
  module XML
    class ArticleMeta

      def initialize(xml)
        @xml = xml
      end                                                                 

      attr_reader :xml   

      def format(article_meta)
        self.xml.tag!('article-meta') do
          self.xml.tag!('article-categories') do
            self.xml.tag!('subj-group', {
              'subj-group-type': 'heading'
            }) do
              self.xml.tag!('subject', {}, article_meta.subject)
            end
          end

          self.xml.tag!('title-group') do
            self.xml.tag!('article-title', {}, article_meta.article_title.to_s)
          end

          self.xml.tag!('contrib-group') do
            self.xml.comment! 'authors'
            article_meta.authors.each do |author|
              author.format(Author.new(self.xml))
            end
          end

          index = 0
          article_meta.each_affiliation do |affiliation|
            self.xml.tag!('aff', {
              id: "aff#{index += 1}"
            }) do
              self.xml.tag!('label', {}, "#{affiliation.label}")
              self.xml.tag!('addr-line', {}, "#{affiliation.addr}")
            end
          end

          self.xml.tag!('author-notes') do
            self.xml.tag!('fn', {
              'fn-type': 'con'
            }) do
              self.xml.tag!('p', {},  "#{article_meta.conceived}")
            end
            self.xml.tag!('fn', {
              'fn-type': 'conflict'
            }) do
              self.xml.tag!('p', {},  "#{article_meta.conflict}")
            end
          end

          self.xml.tag!('pub-date', {
            'pub-type': 'collection'
          }) do
            self.xml.tag!('month', {}, "#{article_meta.published_date.month}" )
            self.xml.tag!('year', {}, "#{article_meta.published_date.year}" )
          end
          self.xml.tag!('pub-date', {
            'pub-type': 'epub'
          }) do
            self.xml.tag!('day', {}, "#{article_meta.published_date.day}" )
            self.xml.tag!('month', {}, "#{article_meta.published_date.month}" )
            self.xml.tag!('year', {}, "#{article_meta.published_date.year}" )
          end

          self.xml.tag!('history') do
            self.xml.tag!('date', {
              'date-type': 'received'
            }) do
              self.xml.tag!('day', {}, "#{article_meta.received_date.day}" )
              self.xml.tag!('month', {}, "#{article_meta.received_date.month}" )
              self.xml.tag!('year', {}, "#{article_meta.received_date.year}" )
            end
            self.xml.tag!('date', {
              'date-type': 'accepted'
            }) do
              self.xml.tag!('day', {}, "#{article_meta.accepted_date.day}" )
              self.xml.tag!('month', {}, "#{article_meta.accepted_date.month}" )
              self.xml.tag!('year', {}, "#{article_meta.accepted_date.year}" )
            end
          end

          self.xml.comment! 'permissions'
          self.xml.tag!('permissions') do
            self.xml.tag!('copyright-year', {}, article_meta.copyright_year)
            self.xml.tag!('copyright-holder', {}, article_meta.copyright_holder)
            self.xml.tag!('license') do
              self.xml.tag!('license-p', {},) do
                self.xml.text! "This is an open access article distributed under the terms of the"
                self.xml.tag!('ext-link', {
                  'ext-link-type': 'uri',
                  'xlink:href': 'http://creativecommons.org/licenses/by/4.0/', 
                  'xlink:type': 'simple'
                }, 'Creative Commons Attribution License')
                self.xml.text! 'which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited'

              end
            end
          end

          article_meta.abstract.format(Abstract.new(self.xml))
        end
      end

    end
  end
end
