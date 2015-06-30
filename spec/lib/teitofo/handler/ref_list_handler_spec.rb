require 'teitofo/handler/ref_list_handler'

RSpec.describe TeiToFo::Handler::RefListHandler do

  let (:subhandler) { TeiToFo::Handler::RefListHandler.new }

  describe '#initialize' do
    it 'creates a builder' do
      expect(subhandler.builder).not_to be_nil
    end

    it 'creates a RefListBuilder' do
      expect(subhandler.builder.class).to be(TeiToFo::Builder::RefListBuilder)
    end
  end

  describe '== ref list ==' do
    describe '#on_start_element' do
    end
  end

end
