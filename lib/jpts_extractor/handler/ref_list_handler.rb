require 'jpts_extractor/handler/subhandler'
require 'jpts_extractor/builder/ref_list_builder'

module JPTSExtractor
  module Handler
    class RefListHandler < SubHandler

      def initialize
        @builder = Builder::RefListBuilder.new
      end

      attr_reader :builder

    end
  end
end
