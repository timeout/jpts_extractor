require 'jpts_extractor/handler/subhandler'
require 'jpts_extractor/builder/article_builder'

module JPTSExtractor
  module Handler
    class ArticleHandler < SubHandler
      def initialize
        @builder = Builder::ArticleBuilder.new
      end

      attr_reader :builder
    end
  end
end
