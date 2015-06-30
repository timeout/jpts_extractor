require 'teitofo/article_part/table_cell'
require 'teitofo/article_part/text_block'
require 'teitofo/article_part/inline_text/inline_text'
require 'teitofo/article_part/inline_text/italic_text'
require 'teitofo/article_part/inline_text/bold_text'

RSpec.describe TeiToFo::ArticlePart::TableCell do

  let(:cell) { TeiToFo::ArticlePart::TableCell.new }

  describe '#text_block' do

    let(:apples) { TeiToFo::ArticlePart::InlineText::InlineText.new('apples') }
    let(:bananas) { TeiToFo::ArticlePart::InlineText::InlineText.new('bananas') }
    let(:pears) { TeiToFo::ArticlePart::InlineText::InlineText.new('pears') }

    let(:contents) { TeiToFo::ArticlePart::TextBlock.new }
    let(:plain) { contents.add_fragment(apples) }
    let(:styled) { contents.add_fragment(apples)
      .add_fragment(TeiToFo::ArticlePart::InlineText::ItalicText.new(bananas))
      .add_fragment(TeiToFo::ArticlePart::InlineText::BoldText.new(pears))
      .add_style(:'font-family', 'serif') }

    it 'has no text block' do
      expect(cell.text_block?).to be_falsey
    end

    it 'can be assigned a text block' do
      cell.text_block = plain
      expect(cell.text_block?).to be_truthy
    end

    it 'can read a text block' do
      cell.text_block = plain
      expect(cell.text_block).to eq(plain)
    end
  end
end
