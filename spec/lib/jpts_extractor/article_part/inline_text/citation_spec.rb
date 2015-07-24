require 'jpts_extractor/article_part/inline_text/citation'
require 'jpts_extractor/article_part/inline_text/inline_text'

RSpec.describe JPTSExtractor::ArticlePart::InlineText::Citation do

  let(:inline_text) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('IMPORTANT') }
  let(:citation) { JPTSExtractor::ArticlePart::InlineText::Citation.new(inline_text) }

  describe '#initialize' do
    it 'constructs some italic text' do
      citation
    end
  end

  describe 'inherited methods' do
    it 'represents itself as a string' do
      expect(citation.to_s).to eq(
        "IMPORTANT"
      )
    end

    it 'is a citation' do
      expect(citation.citation?).to be_truthy
    end

    it 'formats itself' do
      formatter = instance_double('Formatter')
      expect(formatter).to receive(:format).with(inline_text)
      citation.format(formatter)
    end
  end
end
