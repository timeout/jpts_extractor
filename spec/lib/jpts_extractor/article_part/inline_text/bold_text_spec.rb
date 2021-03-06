require 'jpts_extractor/article_part/inline_text/bold_text'
require 'jpts_extractor/article_part/inline_text/inline_text'

RSpec.describe JPTSExtractor::ArticlePart::InlineText::BoldText do

  let(:inline_text) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('IMPORTANT') }
  let(:bold) { JPTSExtractor::ArticlePart::InlineText::BoldText.new(inline_text) }

  describe '#initialize' do
    it 'constructs some bold text' do
      bold
    end
  end

  describe 'inherited methods' do
    it 'represents itself as a string' do
      expect(bold.to_s).to eq(
        "{:\"font-weight\"=>\"bold\"} IMPORTANT"
      )
    end

    it 'formats itself' do
      formatter = instance_double('Formatter')
      expect(formatter).to receive(:format).with(inline_text)
      bold.format(formatter)
    end
  end
end
