require 'jpts_extractor/article_part/inline_text/sans_serif_text'
require 'jpts_extractor/article_part/inline_text/inline_text'

RSpec.describe JPTSExtractor::ArticlePart::InlineText::SansSerifText do

  let(:inline_text) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('IMPORTANT') }
  let(:sans_serif) { JPTSExtractor::ArticlePart::InlineText::SansSerifText.new(inline_text) }

  describe '#initialize' do
    it 'constructs some italic text' do
      sans_serif
    end
  end

  describe 'inherited methods' do
    it 'represents itself as a string' do
      expect(sans_serif.to_s).to eq(
        "{:\"font-family\"=>\"sans-serif\"} IMPORTANT"
      )
    end

    it 'formats itself' do
      formatter = instance_double('Formatter')
      expect(formatter).to receive(:format).with(inline_text)
      sans_serif.format(formatter)
    end
  end
end
