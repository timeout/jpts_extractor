require 'jpts_extractor/handler/caption_handler'

RSpec.describe JPTSExtractor::Handler::CaptionHandler do

  let(:subhandler) { JPTSExtractor::Handler::CaptionHandler.new }

  describe '#initialize' do
    it 'instantiates a CaptionBuilder builder' do
      expect(subhandler.builder).not_to be_nil
      expect(subhandler.builder.class).to be(JPTSExtractor::Builder::CaptionBuilder)
    end
  end

end
