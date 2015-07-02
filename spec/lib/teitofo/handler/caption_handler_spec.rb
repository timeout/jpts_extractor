require 'teitofo/handler/caption_handler'

RSpec.describe TeiToFo::Handler::CaptionHandler do

  let(:subhandler) { TeiToFo::Handler::CaptionHandler.new }

  describe '#initialize' do
    it 'instantiates a CaptionBuilder builder' do
      expect(subhandler.builder).not_to be_nil
      expect(subhandler.builder.class).to be(TeiToFo::Builder::CaptionBuilder)
    end
  end

end
