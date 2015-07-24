require 'jpts_extractor/handler/ref_list_handler'

RSpec.describe JPTSExtractor::Handler::RefListHandler do

  let (:subhandler) { JPTSExtractor::Handler::RefListHandler.new }

  describe '#initialize' do
    it 'creates a builder' do
      expect(subhandler.builder).not_to be_nil
    end

    it 'creates a RefListBuilder' do
      expect(subhandler.builder.class).to be(JPTSExtractor::Builder::RefListBuilder)
    end
  end

  describe '== ref list ==' do
    describe '#on_start_element' do
    end
  end

end
