require 'teitofo/builder/text_block_builder'
require 'teitofo/handler/text_block_handler'

RSpec.describe TeiToFo::Builder::TextBlockBuilder do

  let(:builder) { TeiToFo::Builder::TextBlockBuilder.new }

  describe '#initialize' do
    it 'creates a TextBlock' do
      expect(builder.text_block).not_to be_nil
      expect(builder.text_block.class).to be TeiToFo::ArticlePart::TextBlock
    end

    describe '#create fragment' do
      let(:subhandler) { TeiToFo::Handler::TextBlockHandler.new }

      it 'creates an italic fragment' do
        builder.create_fragment('angurie', [:italic])
        expect(builder.text_block.size).to eq(1)
        expect(builder.text_block.to_s).to eq('angurie')
        expect(builder.text_block.fragments.first.class)
          .to be(TeiToFo::ArticlePart::InlineText::ItalicText)
      end

      it 'creates an italic fragment' do
        builder.create_fragment('angurie', [:italic, :bold])
        expect(builder.text_block.size).to eq(1)
        expect(builder.text_block.to_s).to eq('angurie')
        expect(builder.text_block.fragments.first.class)
          .to be(TeiToFo::ArticlePart::InlineText::BoldText)
      end
    end
  end
end
