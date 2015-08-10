require 'jpts_extractor/article_part/article_meta'
require 'jpts_extractor/txt/article_meta'
require 'jpts_extractor/txt/body'
require 'jpts_extractor/txt/back'

module JPTSExtractor
  module Txt
    class Article
      def initialize
        @str = String.new
      end

      attr_accessor :str

      def format(article)
        article_meta_formatter = ArticleMeta.new(self.str)
        article.front.article_meta.format(article_meta_formatter)
        self.str = article_meta_formatter.str

        body_formatter = Body.new(self.str)
        article.body.format(body_formatter)
        self.str = body_formatter.str

        back_formatter = Back.new(self.str)
        article.back.format(back_formatter)
        self.str = back_formatter.str
      end

    end
  end
end
