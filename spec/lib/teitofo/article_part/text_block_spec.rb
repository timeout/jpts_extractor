require 'teitofo/article_part/text'
require 'teitofo/article_part/inline_text/inline_text'
require 'teitofo/article_part/inline_text/italic_text'
require 'teitofo/article_part/inline_text/bold_text'
require 'teitofo/article_part/inline_text/monospace_text'
require 'teitofo/article_part/inline_text/super_script_text'

RSpec.describe TeiToFo::ArticlePart::Text do

  let(:text) { TeiToFo::ArticlePart::Text.new }
  let(:inline_text) { 
    TeiToFo::ArticlePart::InlineText::InlineText.new 'squilibrato' }

  describe '#add_fragments' do
    it 'adds inline text fragments' do
      text << TeiToFo::ArticlePart::InlineText::SuperScriptText.new(inline_text)
      expect(text.size).to eq(1)
      expect(text.first.styles).to include('vertical-align': "super")
    end

    it 'adds inline TeiToFo::ArticlePart::SuperScriptText.new(inline_text)text fragments' do
      super_script = TeiToFo::ArticlePart::InlineText::SuperScriptText.new(inline_text)
      text << TeiToFo::ArticlePart::InlineText::MonospaceText.new(super_script)
      expect(text.size).to eq(1)
      expect(text.first.styles).to include('vertical-align': 'super')
      expect(text.first.styles).to include('font-family': 'monospace')
    end
  end
end
