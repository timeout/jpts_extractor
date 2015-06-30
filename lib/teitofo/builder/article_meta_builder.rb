require 'teitofo/article_part/article_meta'
require 'teitofo/article_part/author'
require 'teitofo/article_part/affiliation'

module TeiToFo
  module Builder
    class ArticleMetaBuilder
      def initialize
        @article_meta = ArticlePart::ArticleMeta.new
      end

      attr_reader :article_meta
      attr_writer :pub_date_day, :pub_date_month, :pub_date_year,
        :recv_date_day, :recv_date_month, :recv_date_year,
        :accept_date_day, :accept_date_month, :accept_date_year,
        :surname, :given_names, :aff_label, :aff_addr_line

      def subject= (subject)
        @article_meta.subject = subject.upcase unless subject.nil?
      end

      def article_title= (title)
        @article_meta.article_title = title.capitalize unless title.nil?
      end

      def abstract= (abstract)
        @article_meta.abstract = abstract
      end

      def conflict
        @article_meta.conflict
      end

      def conflict= (conflict)
        @article_meta.conflict ||= conflict
      end

      def conceived
        @article_meta.conceived
      end

      def conceived= (conceived)
        @article_meta.conceived ||= conceived
      end

      def copyright_year= (year)
        @article_meta.copyright_year = year
      end

      def copyright_holder= (holder)
        @article_meta.copyright_holder = holder
      end

      def build_pub_date
        @article_meta.published_date = Date.new(@pub_date_year,
                                          @pub_date_month,
                                          @pub_date_day)
      end

      def build_recv_date
        @article_meta.received_date = Date.new(@recv_date_year,
                                          @recv_date_month,
                                          @recv_date_day)
      end

      def build_accept_date
        @article_meta.accepted_date = Date.new(@accept_date_year,
                                          @accept_date_month,
                                          @accept_date_day)
      end

      def author
        author = ArticlePart::Author.new(@given_names, @surname, @refs.dup)
        @authors ||= Array.new
        @authors << author
        @refs.clear
      end

      def add_author_ref(ref)
        @refs ||= Array.new
        @refs << ref
      end

      def build_authors
        @article_meta.authors = @authors
      end

      def build_affiliation
        @article_meta.add_affiliation(
          ArticlePart::Affiliation.new(@aff_label, @aff_addr_line))
      end

    end
  end
end