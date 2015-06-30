require 'teitofo/handler/handler'
require 'teitofo/exceptions'

RSpec.describe TeiToFo::Handler::Handler do

  let(:handler) { TeiToFo::Handler::Handler.new }

  describe 'article handling' do
    describe '#start_element' do
      it 'pushes an ArticleHandler onto the stack on event :article' do
        handler.start_element(:article)
        expect(handler.stack.top.class).to eq(TeiToFo::Handler::ArticleHandler)
      end
    end

    describe '#end_element' do
      it 'pops the stack' do
        handler.start_element(:article)
        handler.end_element(:article)
        expect(handler.stack.top.class).to eq(TeiToFo::Handler::NullHandler)
      end

      it 'returns an article' do
        handler.start_element(:article)
        handler.end_element(:article)
        article = handler.article
        expect(article).not_to be_nil
        expect(article).to respond_to(:front)
        expect(article).to respond_to(:body)
        expect(article).to respond_to(:back)
      end

      it 'raises a NullHandlerError' do
        expect {handler.end_element(:article)}
          .to raise_error(TeiToFo::Exceptions::NullHandlerError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:article)
        handler.start_element(:front)
        expect {handler.end_element(:article)}
          .to raise_error(TeiToFo::Exceptions::BadParseError)
      end
    end
  end
end
