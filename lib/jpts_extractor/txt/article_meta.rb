module JPTSExtractor
  module Txt
    class ArticleMeta
      def initialize(str)
        @str = str
      end

      attr_accessor :str

      def format(article_meta)
        @str += "#{article_meta.subject}\n\n"
        @str += "#{article_meta.article_title}\n\n"

        author_str = article_meta.authors.map do |author|
          "#{author.given_names} #{author.surname}"
        end.join(', ')
        @str += "#{author_str}\n"

        affiliations = Array.new
        article_meta.each_affiliation do |affiliation|
          affiliations << "#{affiliation.label}. #{affiliation.addr}"
        end
        affiliation_str = affiliations.join(', ')

        @str += "#{affiliation_str}\n\n"
        @str += "received: #{article_meta.received_date.strftime("%B %e, %Y")}\n"
        @str += "accepted: #{article_meta.accepted_date.strftime("%B %e, %Y")}\n"
        @str += "published: #{article_meta.published_date.strftime("%B %e, %Y")}\n\n"

        @str += "#{article_meta.conceived}\n"
        @str += "#{article_meta.conflict}\n\n"

        @str += "Abstract\n\n"
        abstract = article_meta.abstract
        @str += "#{abstract.title}" if abstract.title?
        @str += "#{abstract.paragraph}" if abstract.paragraph?
        if abstract.sections?
          abstract.sections.each do |section|
            section.each(section) do |subsection|
              @str += "#{subsection}\n\n" if subsection.is_a? JPTSExtractor::ArticlePart::Text
            end
          end
        end
        self.str
      end
    end
  end
end
