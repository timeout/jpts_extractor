require 'teitofo/article'

module TeiToFo
  module Builder
    class ArticleBuilder
      def initialize
        @article = Article.new
      end

      attr_reader :article

      def front= (front)
        @article.front = front
      end

      def body= (body)
        @article.body = body
      end

      def back= (back)
        @article.back = back
      end
    end
  end
end
