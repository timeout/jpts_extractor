require 'jpts_extractor/handler/handler'
require 'jpts_extractor/exceptions'

RSpec.describe JPTSExtractor::Handler::Handler do

  let(:handler) { JPTSExtractor::Handler::Handler.new }

  describe 'article handling' do
    describe '#start_element' do
      it 'pushes a ArticleMetaHandler onto the stack on event :\'article-meta\'' do
        handler.start_element(:'article-meta')
        expect(handler.stack.top.class).to eq(JPTSExtractor::Handler::ArticleMetaHandler)
      end
    end

    describe '#end_element' do
      it 'raises a NullHandlerError' do
        expect {handler.end_element(:'article-meta')}
          .to raise_error(JPTSExtractor::Exceptions::NullHandlerError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:article)
        expect {handler.end_element(:'article-meta')}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:'article-meta')
        expect {handler.end_element(:'article-meta')}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end

      it 'raises a BadParseError' do
        handler.start_element(:abstract)
        handler.start_element(:'article-meta')
        expect {handler.end_element(:'article-meta')}
          .to raise_error(JPTSExtractor::Exceptions::BadParseError)
      end
    end
  end
end
