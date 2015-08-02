require 'jpts_extractor/article_part/article_meta'
require 'jpts_extractor/builder/text_builder'
require 'jpts_extractor/article_part/author'
require 'jpts_extractor/article_part/affiliation'

require 'date'

module JPTSExtractor
  module Builder
    class ArticleMetaBuilder
      include TextBuilder

      def initialize
        @article_meta = ArticlePart::ArticleMeta.new
      end

      attr_reader :article_meta
      attr_writer :pub_date_day, :pub_date_month, :pub_date_year,
        :recv_date_day, :recv_date_month, :recv_date_year,
        :accept_date_day, :accept_date_month, :accept_date_year,
        :surname, :given_names, :aff_label, :aff_addr_line

      def subject= (subject)
        self.article_meta.subject = subject
      end

      def article_title!
        self.article_meta.article_title = self.text
      end

      def alt_title!
        self.article_meta.alt_title = self.text
      end

      def abstract= (abstract)
        self.article_meta.abstract = abstract
      end

      def conflict!
        self.article_meta.conflict = self.text
      end

      def conceived!
        self.article_meta.conceived = self.text
      end

      def copyright_year= (year)
        self.article_meta.copyright_year = year
      end

      def copyright_holder= (holder)
        self.article_meta.copyright_holder = holder
      end

      def build_pub_date
        self.article_meta.published_date = Date.new(@pub_date_year,
                                          @pub_date_month,
                                          @pub_date_day)
      end

      def build_recv_date
        self.article_meta.received_date = Date.new(@recv_date_year,
                                          @recv_date_month,
                                          @recv_date_day)
      end

      def build_accept_date
        self.article_meta.accepted_date = Date.new(@accept_date_year,
                                          @accept_date_month,
                                          @accept_date_day)
      end

      def author
        author = ArticlePart::Author.new(@given_names, @surname, references)
        @authors ||= Array.new
        @authors << author
        @refs.clear if @refs
      end

      def add_author_ref(ref)
        @refs ||= Array.new
        @refs << ref
      end

      def build_authors
        self.article_meta.authors = @authors
      end

      def build_affiliation
        self.article_meta.add_affiliation(
          ArticlePart::Affiliation.new(@aff_label, @aff_addr_line))
      end

      private
      def references
        @refs.nil? ? nil : @refs.dup
      end
    end
  end
end
