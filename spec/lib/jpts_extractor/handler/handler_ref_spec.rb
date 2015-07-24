require 'jpts_extractor/handler/handler'
require 'jpts_extractor/exceptions'

RSpec.describe JPTSExtractor::Handler::Handler do

  let(:handler) { JPTSExtractor::Handler::Handler.new }

  describe 'article handling' do
    describe '#start_element' do
      it 'pushes a RefHandler onto the stack on event :ref' do
        handler.start_element(:ref)
        expect(handler.stack.top.class).to eq(JPTSExtractor::Handler::RefHandler)
      end
    end

    describe '#end_element' do
      it 'raises a NullHandlerError' do
        expect {handler.end_element(:ref)}
          .to raise_error(JPTSExtractor::Exceptions::NullHandlerError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:article)
        expect {handler.end_element(:ref)}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:ref)
        expect {handler.end_element(:ref)}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:front)
        handler.start_element(:ref)
        expect {handler.end_element(:ref)}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end

      it 'adds a reference to the ref_list' do
        handler.start_element(:'ref-list')
        handler.start_element(:ref)
        handler.end_element(:ref)
      end
    end

  end
end

