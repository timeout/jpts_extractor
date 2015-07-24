require 'jpts_extractor/article_part/table_cell'
require 'jpts_extractor/article_part/text'
require 'jpts_extractor/article_part/inline_text/inline_text'
require 'jpts_extractor/article_part/inline_text/italic_text'
require 'jpts_extractor/article_part/inline_text/bold_text'

RSpec.describe JPTSExtractor::ArticlePart::TableCell do

  let(:cell) { JPTSExtractor::ArticlePart::TableCell.new }

  describe '#text' do

    let(:apples) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('apples') }
    let(:bananas) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('bananas') }
    let(:pears) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('pears') }

    let(:contents) { JPTSExtractor::ArticlePart::Text.new }
    let(:plain) { contents.add_fragment(apples) }
    let(:styled) { contents.add_fragment(apples)
      .add_fragment(JPTSExtractor::ArticlePart::InlineText::ItalicText.new(bananas))
      .add_fragment(JPTSExtractor::ArticlePart::InlineText::BoldText.new(pears))
      .add_style(:'font-family', 'serif') }

    it 'has no text block' do
      expect(cell.text?).to be_falsey
    end

    it 'can be assigned a text block' do
      cell.text = plain
      expect(cell.text?).to be_truthy
    end

    it 'can read a text block' do
      cell.text = plain
      expect(cell.text).to eq(plain)
    end
  end
end
