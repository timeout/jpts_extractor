require 'jpts_extractor/article_part/text'
require 'jpts_extractor/article_part/inline_text/inline_text'
require 'jpts_extractor/article_part/inline_text/italic_text'
require 'jpts_extractor/article_part/inline_text/bold_text'
require 'jpts_extractor/article_part/inline_text/monospace_text'
require 'jpts_extractor/article_part/inline_text/super_script_text'

RSpec.describe JPTSExtractor::ArticlePart::Text do

  let(:text) { JPTSExtractor::ArticlePart::Text.new }
  let(:inline_text) { 
    JPTSExtractor::ArticlePart::InlineText::InlineText.new 'squilibrato' }

  describe '#add_fragments' do
    it 'adds inline text fragments' do
      text << JPTSExtractor::ArticlePart::InlineText::SuperScriptText.new(inline_text)
      expect(text.size).to eq(1)
      expect(text.first.styles).to include('vertical-align': "super")
    end

    it 'adds inline JPTSExtractor::ArticlePart::SuperScriptText.new(inline_text)text fragments' do
      super_script = JPTSExtractor::ArticlePart::InlineText::SuperScriptText.new(inline_text)
      text << JPTSExtractor::ArticlePart::InlineText::MonospaceText.new(super_script)
      expect(text.size).to eq(1)
      expect(text.first.styles).to include('vertical-align': 'super')
      expect(text.first.styles).to include('font-family': 'monospace')
    end
  end
end
