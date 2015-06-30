require 'teitofo/article_part/text_block'
require 'teitofo/article_part/inline_text/inline_text'
require 'teitofo/article_part/inline_text/italic_text'
require 'teitofo/article_part/inline_text/bold_text'
require 'teitofo/article_part/inline_text/monospace_text'
require 'teitofo/article_part/inline_text/super_script_text'

RSpec.describe TeiToFo::ArticlePart::TextBlock do

  let(:text_block) { TeiToFo::ArticlePart::TextBlock.new }
  let(:inline_text) { 
    TeiToFo::ArticlePart::InlineText::InlineText.new 'squilibrato' }

  describe '#stylish?' do
    it 'isn\'t stylish' do
      expect(text_block.stylish?).to be_falsey
    end

    it 'is stylish' do
      text_block.add_style(:'font-family', 'serif')
      expect(text_block.stylish?).to be_truthy
    end
  end

  describe '#styles' do
    it 'returns a hash of the styles associated with the text block' do
      text_block.add_style(:'font-family', 'serif')
      expect(text_block.styles).to eq({'font-family': 'serif'})
    end

    it 'returns nil' do
      expect(text_block.styles).to be_nil
    end

  end

  describe '#add_style' do
    it 'adds a style to the text block' do
      text_block.add_style(:'font-family', 'serif')
    end
  end

  describe '#add_fragments' do
    it 'adds inline text fragments' do
      text_block << TeiToFo::ArticlePart::InlineText::SuperScriptText.new(inline_text)
      expect(text_block.size).to eq(1)
      expect(text_block.first.styles).to include('vertical-align': "super")
    end

    it 'adds inline TeiToFo::ArticlePart::SuperScriptText.new(inline_text)text fragments' do
      super_script = TeiToFo::ArticlePart::InlineText::SuperScriptText.new(inline_text)
      text_block << TeiToFo::ArticlePart::InlineText::MonospaceText.new(super_script)
      expect(text_block.size).to eq(1)
      expect(text_block.first.styles).to include('vertical-align': 'super')
      expect(text_block.first.styles).to include('font-family': 'monospace')
    end
  end
end
