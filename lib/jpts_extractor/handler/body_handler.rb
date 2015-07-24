require 'jpts_extractor/handler/subhandler'
require 'jpts_extractor/builder/body_builder'

module JPTSExtractor
  module Handler
    class BodyHandler < SubHandler

      def initialize
        @builder = Builder::BodyBuilder.new
      end

      attr_reader :builder

    end
  end
end
