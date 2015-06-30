require 'teitofo/handler/subhandler'
require 'teitofo/builder/back_builder'

module TeiToFo
  module Handler
    class BackHandler < SubHandler
      def initialize
        @builder = Builder::BackBuilder.new
      end

      attr_reader :builder
    end
  end
end
