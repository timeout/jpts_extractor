require 'jpts_extractor/handler/handler'
require 'jpts_extractor/exceptions'

RSpec.describe JPTSExtractor::Handler::Handler do

  let(:handler) { JPTSExtractor::Handler::Handler.new }

  describe 'article handling' do
    describe '#start_element' do
      it 'pushes an ArticleHandler onto the stack on event :article' do
        handler.start_element(:article)
        expect(handler.stack.top.class).to eq(JPTSExtractor::Handler::ArticleHandler)
      end
    end

    describe '#end_element' do
      it 'pops the stack' do
        handler.start_element(:article)
        handler.end_element(:article)
        expect(handler.stack.top.class).to eq(JPTSExtractor::Handler::NullHandler)
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
          .to raise_error(JPTSExtractor::Exceptions::NullHandlerError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:article)
        handler.start_element(:front)
        expect {handler.end_element(:article)}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end
    end
  end
end
