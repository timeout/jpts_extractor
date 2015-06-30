require 'teitofo/handler/subhandler'
require 'teitofo/builder/front_builder'

module TeiToFo
  module Handler
    class FrontHandler < SubHandler

      def initialize
        @builder = Builder::FrontBuilder.new
      end

      attr_reader :builder

    end
  end
end
