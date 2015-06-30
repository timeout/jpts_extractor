require 'teitofo/handler/text_block_handler'

RSpec.describe TeiToFo::Handler::TextBlockHandler do

    let(:subhandler) { TeiToFo::Handler::TextBlockHandler.new }

  describe '#initialize' do
    it 'has a builder' do
      expect(subhandler.builder).not_to be_nil
    end

    it 'has a TextBlockBuilder' do
      expect(subhandler.builder.class).to eq(TeiToFo::Builder::TextBlockBuilder)
    end
  end

  describe 'Decorating a text block' do
    it 'builds a text block' do
      subhandler.on_start_element(:italic)
      expect(subhandler.event_stack.top).to eq(:italic)
    end

    it 'builds an italic text block' do
      subhandler.on_start_element(:italic)
      subhandler.on_text('importante!')
      subhandler.on_end_element(:italic)
      expect(subhandler.builder.text_block.size).to eq(1)
    end

    it 'builds a bold italic text block' do
      subhandler.on_start_element(:bold)
      subhandler.on_start_element(:italic)
      subhandler.on_text('importante!')
      subhandler.on_end_element(:italic)
      subhandler.on_end_element(:bold)
      expect(subhandler.builder.text_block.size).to eq(1)
    end

    it 'builds a sentence in Italian' do
      subhandler.on_text('Questo è')
      subhandler.on_start_element(:italic)
      subhandler.on_text('importante!')
      subhandler.on_end_element(:italic)
      expect(subhandler.builder.text_block.size).to eq(2)
    end

    it 'builds an important sentence in Italian' do
      subhandler.on_text('Questo è')
      subhandler.on_start_element(:italic)
      subhandler.on_text('molto')
      subhandler.on_end_element(:italic)
      subhandler.on_text('importante!')
      expect(subhandler.builder.text_block.size).to eq(3)
    end

    it 'builds an important sentence in Italian' do
      subhandler.on_text('Questo è')
      subhandler.on_start_element(:italic)
      subhandler.on_text('molto')
      subhandler.on_end_element(:italic)
      subhandler.on_start_element(:sup)
      subhandler.on_text('importante!')
      subhandler.on_end_element(:sup)
      expect(subhandler.builder.text_block.size).to eq(3)
    end

    it 'Good night Austin, Texas, wherever you are!' do
      subhandler.on_start_element :p
      subhandler.on_text 'buona notte' 
      subhandler.on_start_element :bold
      subhandler.on_text 'Austin, Texas,' 
      subhandler.on_end_element :bold
      subhandler.on_start_element :italic
      subhandler.on_text 'ovunque'
      subhandler.on_end_element :italic
      subhandler.on_text 'tu sia'
      subhandler.on_end_element :p
      expect(subhandler.builder.text_block.size).to eq(4)
    end
  end

end
