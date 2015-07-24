require 'jpts_extractor/handler/handler'
require 'jpts_extractor/exceptions'

RSpec.describe JPTSExtractor::Handler::Handler do

  let(:handler) { JPTSExtractor::Handler::Handler.new }

  describe 'article handling' do
    describe '#start_element' do
      it 'pushes a RefListHandler onto the stack on event :\'ref-list\'' do
        handler.start_element(:'ref-list')
        expect(handler.stack.top.class).to eq(JPTSExtractor::Handler::RefListHandler)
      end
    end

    describe '#end_element' do
      it 'raises a NullHandlerError' do
        expect {handler.end_element(:'ref-list')}
          .to raise_error(JPTSExtractor::Exceptions::NullHandlerError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:article)
        expect {handler.end_element(:'ref-list')}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:'ref-list')
        expect {handler.end_element(:'ref-list')}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:abstract)
        handler.start_element(:'ref-list')
        expect {handler.end_element(:'ref-list')}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end
    end

  end
end

