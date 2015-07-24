module JPTSExtractor
  module ArticlePart
    class ArticleMeta
      def initialize
        @authors = Array.new
        @affiliations = Array.new
      end

      attr_accessor :subject, :article_title, :abstract, :conflict, 
        :conceived, :published_date, :received_date, :accepted_date,
        :copyright_year, :copyright_holder, :authors

      def each_author(&block)
        @authors.each(&block)
      end

      def authors_size
        @authors.size
      end

      def add_affiliation(affiliation)
        @affiliations << affiliation
      end

      def each_affiliation(&block)
        @affiliations.each(&block)
      end

      def format(article_formatter)
        article_formatter.format(self)
      end

      def to_s
        "subject: #{@subject}\n" +
        "article title: #{@article_title}\n" +
        "authors: #{@authors.map { |author| author.to_s}.join(', ') }\n" +
        "affiliations: #{@affiliations.map { |aff| aff.to_s}.join(', ') }\n" +
        "abstract: #{@abstract}\n" +
        "conflict: #{@conflict}\n" +
        "conceived: #{@conceived}\n" +
        "published date: #{@published_date}\n" +
        "received date: #{@received_date}\n" +
        "accepted date: #{@accepted_date}\n" +
        "copyright year: #{@copyright_year}\n" +
        "copyright holder: #{@copyright_holder}"
      end
    end
  end
end
