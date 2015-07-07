require 'teitofo/handler/section_handler'

RSpec.describe TeiToFo::Handler::SectionHandler do

  let(:subhandler) { TeiToFo::Handler::SectionHandler.new }

  describe '#initialize' do
    it 'instantiates a CaptionBuilder builder' do
      expect(subhandler.builder).not_to be_nil
      expect(subhandler.builder.class).to be(TeiToFo::Builder::SectionBuilder)
    end
  end

  describe '#on_start_element' do
    it 'switches text on, on :title' do
      subhandler.on_start_element(:title)
      expect(subhandler.text?).to be_truthy
    end

    it 'switches text on, on :p' do
      subhandler.on_start_element(:p)
      expect(subhandler.text?).to be_truthy
    end
  end

  describe '#on_end_element' do
    it 'switches text off, on :title' do
      subhandler.on_start_element :title
      subhandler.on_end_element :title
      expect(subhandler.text?).to be_falsey
    end

    it 'switches text off, on :p' do
      subhandler.on_start_element :p
      subhandler.on_end_element :p
      expect(subhandler.text?).to be_falsey
    end
  end

end
