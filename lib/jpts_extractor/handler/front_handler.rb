require 'jpts_extractor/handler/subhandler'
require 'jpts_extractor/builder/front_builder'

module JPTSExtractor
  module Handler
    class FrontHandler < SubHandler

      def initialize
        @builder = Builder::FrontBuilder.new
      end

      attr_reader :builder

    end
  end
end
