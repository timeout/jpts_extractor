require 'teitofo/handler/handler'
require 'teitofo/exceptions'

RSpec.describe TeiToFo::Handler::Handler do

  let(:handler) { TeiToFo::Handler::Handler.new }

  describe 'article handling' do
    describe '#start_element' do
      it 'pushes a RefHandler onto the stack on event :ref' do
        handler.start_element(:ref)
        expect(handler.stack.top.class).to eq(TeiToFo::Handler::RefHandler)
      end
    end

    describe '#end_element' do
      it 'raises a NullHandlerError' do
        expect {handler.end_element(:ref)}
          .to raise_error(TeiToFo::Exceptions::NullHandlerError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:article)
        expect {handler.end_element(:ref)}
          .to raise_error(TeiToFo::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:ref)
        expect {handler.end_element(:ref)}
          .to raise_error(TeiToFo::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:front)
        handler.start_element(:ref)
        expect {handler.end_element(:ref)}
          .to raise_error(TeiToFo::Exceptions::BadParseError)
      end

      it 'adds a reference to the ref_list' do
        handler.start_element(:'ref-list')
        handler.start_element(:ref)
        handler.end_element(:ref)
      end
    end

  end
end

