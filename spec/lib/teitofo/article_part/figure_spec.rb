require 'teitofo/article_part/figure'
require 'teitofo/article_part/text_block'
require 'teitofo/article_part/inline_text/inline_text'

RSpec.describe TeiToFo::ArticlePart::Figure do

  let(:figure) { TeiToFo::ArticlePart::Figure.new }

  describe '#graphic_basename' do
    it 'gets and sets a graphic basename' do
      figure.graphic_basename = 'journal.pone.0033591.g001'
      expect(figure.graphic_basename).to eq('journal.pone.0033591.g001')
    end

    it 'has a graphic_basename' do
      expect(figure.graphic_basename?).to be_falsey
      figure.graphic_basename = 'journal.pone.0033591.g001'
      expect(figure.graphic_basename?).to be_truthy
    end
  end

  describe '#label' do
    let(:text_block) { TeiToFo::ArticlePart::TextBlock.new }
    it 'gets and sets a text block label' do
      text_block << TeiToFo::ArticlePart::InlineText::InlineText.new('Figure 1.')
      figure.label = text_block
      expect(figure.label).to eq(text_block)
    end

    it 'has a label' do
      expect(figure.label?).to be_falsey
      text_block << TeiToFo::ArticlePart::InlineText::InlineText.new('Figure 1.')
      figure.label = text_block
      expect(figure.label?).to be_truthy
    end
  end

  describe '#caption' do
    let(:text_block) { TeiToFo::ArticlePart::TextBlock.new }
    let(:title) { TeiToFo::ArticlePart::InlineText::InlineText.new(
      'Shoot low they\'re riding shetland ponies!') }
    let(:paragraph) { TeiToFo::ArticlePart::InlineText::InlineText.new(
      "I ran right out of beer, I took a look into the larder, No bones, nothin'") }
    let(:caption) { TeiToFo::ArticlePart::Caption.new }

    it 'gets and sets a caption' do
      caption.title = title
      caption.paragraph = paragraph
      figure.caption = caption
      expect(figure.caption).to eq(caption)
    end

    it 'has a caption' do
      expect(figure.caption?).to be_falsey
      caption.title = title
      caption.paragraph = paragraph
      figure.caption = caption
      expect(figure.caption?).to be_truthy
    end
  end
end
