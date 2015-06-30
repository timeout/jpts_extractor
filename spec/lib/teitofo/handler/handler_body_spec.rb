require 'teitofo/handler/handler'
require 'teitofo/exceptions'

RSpec.describe TeiToFo::Handler::Handler do

  let(:handler) { TeiToFo::Handler::Handler.new }

  describe 'article handling' do
    describe '#start_element' do
      it 'pushes a BodyHandler onto the stack on event :body' do
        handler.start_element(:body)
        expect(handler.stack.top.class).to eq(TeiToFo::Handler::BodyHandler)
      end
    end

    describe '#end_element' do
      it 'raises a NullHandlerError' do
        expect {handler.end_element(:body)}
          .to raise_error(TeiToFo::Exceptions::NullHandlerError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:article)
        expect {handler.end_element(:body)}
          .to raise_error(TeiToFo::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:body)
        expect {handler.end_element(:body)}
          .to raise_error(TeiToFo::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:abstract)
        handler.start_element(:body)
        expect {handler.end_element(:body)}
          .to raise_error(TeiToFo::Exceptions::BadParseError)
      end
    end

  end
end
