require 'jpts_extractor/article_part/inline_text/capitalize_text'
require 'jpts_extractor/article_part/inline_text/inline_text'

RSpec.describe JPTSExtractor::ArticlePart::InlineText::CapitalizeText do

  let(:inline_text) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('important') }
  let(:capitalize) { JPTSExtractor::ArticlePart::InlineText::CapitalizeText.new(inline_text) }

  describe '#initialize' do
    it 'constructs some capitalize text' do
      capitalize
    end
  end

  describe 'inherited methods' do
    it 'represents itself as a string' do
      expect(capitalize.to_s).to eq(
        "IMPORTANT"
      )
    end

    it 'formats itself' do
      formatter = instance_double('Formatter')
      expect(formatter).to receive(:format).with(inline_text)
      capitalize.format(formatter)
    end
  end
end
