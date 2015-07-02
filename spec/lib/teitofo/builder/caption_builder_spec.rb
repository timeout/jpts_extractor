require 'teitofo/builder/caption_builder'
require 'teitofo/article_part/text_block'
require 'teitofo/article_part/inline_text/inline_text'
require 'teitofo/article_part/inline_text/italic_text'

RSpec.describe TeiToFo::Builder::CaptionBuilder do

  let(:builder) { TeiToFo::Builder::CaptionBuilder.new }

  describe '#initialize' do
    it 'instantiates a caption' do
      expect(builder.caption).not_to be_nil
      expect(builder.caption.class).to be(TeiToFo::ArticlePart::Caption)
    end
  end

  describe '#text_block!' do
    it 'instantiates a text_block' do
      builder.text_block!
      expect(builder.text_block).not_to be_nil
      expect(builder.text_block.class).to be(TeiToFo::ArticlePart::TextBlock)
    end
  end

  describe '#title!' do
    let(:text) { TeiToFo::ArticlePart::TextBlock.new }
    it 'assigns a text block to the caption' do
      builder.text_block!
      builder.create_fragment('Questo è', [])
      builder.create_fragment('importante!', [:italic])
      builder.title!
      expect(builder.caption.title.fragments.first.text).to eq('Questo è')
    end
  end

  describe '#paragraph!' do
    let(:text) { TeiToFo::ArticlePart::TextBlock.new }
    it 'assigns a text block to the caption' do
      builder.text_block!
      builder.create_fragment("Per me , l'assurdità è l'unica realtà", [])
      builder.paragraph!
      expect(builder.caption.paragraph.fragments.first.text)
        .to eq("Per me , l'assurdità è l'unica realtà")
    end
  end
end
