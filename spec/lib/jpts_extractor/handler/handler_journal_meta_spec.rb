require 'jpts_extractor/handler/handler'
require 'jpts_extractor/exceptions'

RSpec.describe JPTSExtractor::Handler::Handler do

  let(:handler) { JPTSExtractor::Handler::Handler.new }

  describe 'article handling' do
    describe '#start_element' do
      it 'pushes a JournalMetaHandler onto the stack on event :\'journal-meta\'' do
        handler.start_element(:'journal-meta')
        expect(handler.stack.top.class).to eq(JPTSExtractor::Handler::JournalMetaHandler)
      end
    end

    describe '#end_element' do
      it 'raises a NullHandlerError' do
        expect {handler.end_element(:'journal-meta')}
          .to raise_error(JPTSExtractor::Exceptions::NullHandlerError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:article)
        expect {handler.end_element(:'journal-meta')}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:'journal-meta')
        expect {handler.end_element(:'journal-meta')}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:abstract)
        handler.start_element(:'journal-meta')
        expect {handler.end_element(:'journal-meta')}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end
    end
  end
end
