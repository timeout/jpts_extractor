require 'jpts_extractor/handler/subhandler'
require 'jpts_extractor/builder/journal_meta_builder'

module JPTSExtractor
  module Handler
    class JournalMetaHandler < SubHandler

      def initialize
        @builder = Builder::JournalMetaBuilder.new
      end

      attr_reader :builder

      def on_start_element(name)
        switch_text_on if :'journal-title' == name
      end

      def on_end_element(name)
        switch_text_off if :'journal-title' == name
      end

      def on_text(value)
        @builder.journal_title = value if text?
      end

    end
  end
end
