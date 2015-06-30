require 'teitofo/handler/subhandler'
require 'teitofo/builder/article_builder'

module TeiToFo
  module Handler
    class ArticleHandler < SubHandler
      def initialize
        @builder = Builder::ArticleBuilder.new
      end

      attr_reader :builder
    end
  end
end
