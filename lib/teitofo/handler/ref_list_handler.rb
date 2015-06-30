require 'teitofo/handler/subhandler'
require 'teitofo/builder/ref_list_builder'

module TeiToFo
  module Handler
    class RefListHandler < SubHandler

      def initialize
        @builder = Builder::RefListBuilder.new
      end

      attr_reader :builder

    end
  end
end
