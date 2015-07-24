require 'jpts_extractor/article_part/figure'
require 'jpts_extractor/article_part/text'
require 'jpts_extractor/article_part/inline_text/inline_text'

RSpec.describe JPTSExtractor::ArticlePart::Figure do

  let(:figure) { JPTSExtractor::ArticlePart::Figure.new }

  describe '#graphic_basename' do
    it 'gets and sets a graphic basename' do
      figure.graphic_path = 'journal.pone.0033591.g001'
      expect(figure.graphic_path).to eq('journal.pone.0033591.g001')
    end

    it 'has a graphic_basename' do
      expect(figure.graphic_path?).to be_falsey
      figure.graphic_path = 'journal.pone.0033591.g001'
      expect(figure.graphic_path?).to be_truthy
    end
  end

  describe '#label' do
    let(:text) { JPTSExtractor::ArticlePart::Text.new }
    it 'gets and sets a text block label' do
      text << JPTSExtractor::ArticlePart::InlineText::InlineText.new('Figure 1.')
      figure.label = text
      expect(figure.label).to eq(text)
    end

    it 'has a label' do
      expect(figure.label?).to be_falsey
      text << JPTSExtractor::ArticlePart::InlineText::InlineText.new('Figure 1.')
      figure.label = text
      expect(figure.label?).to be_truthy
    end
  end

  describe '#caption' do
    let(:text) { JPTSExtractor::ArticlePart::Text.new }
    let(:title) { JPTSExtractor::ArticlePart::InlineText::InlineText.new(
      'Shoot low they\'re riding shetland ponies!') }
    let(:paragraph) { JPTSExtractor::ArticlePart::InlineText::InlineText.new(
      "I ran right out of beer, I took a look into the larder, No bones, nothin'") }
    let(:caption) { JPTSExtractor::ArticlePart::Caption.new }

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
