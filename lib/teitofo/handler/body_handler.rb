require 'teitofo/handler/subhandler'
require 'teitofo/builder/body_builder'

module TeiToFo
  module Handler
    class BodyHandler < SubHandler

      def initialize
        @builder = Builder::BodyBuilder.new
      end

      attr_reader :builder

    end
  end
end
