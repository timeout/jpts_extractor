require 'teitofo/handler/handler'
require 'teitofo/exceptions'

RSpec.describe TeiToFo::Handler::Handler do

  let(:handler) { TeiToFo::Handler::Handler.new }

  describe 'article handling' do
    describe '#start_element' do
      it 'pushes a RefListHandler onto the stack on event :\'ref-list\'' do
        handler.start_element(:'ref-list')
        expect(handler.stack.top.class).to eq(TeiToFo::Handler::RefListHandler)
      end
    end

    describe '#end_element' do
      it 'raises a NullHandlerError' do
        expect {handler.end_element(:'ref-list')}
          .to raise_error(TeiToFo::Exceptions::NullHandlerError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:article)
        expect {handler.end_element(:'ref-list')}
          .to raise_error(TeiToFo::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:'ref-list')
        expect {handler.end_element(:'ref-list')}
          .to raise_error(TeiToFo::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:abstract)
        handler.start_element(:'ref-list')
        expect {handler.end_element(:'ref-list')}
          .to raise_error(TeiToFo::Exceptions::BadParseError)
      end
    end

  end
end

