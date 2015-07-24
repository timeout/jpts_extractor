require 'jpts_extractor/handler/subhandler'
require 'jpts_extractor/builder/back_builder'

module JPTSExtractor
  module Handler
    class BackHandler < SubHandler
      def initialize
        @builder = Builder::BackBuilder.new
      end

      attr_reader :builder
    end
  end
end
