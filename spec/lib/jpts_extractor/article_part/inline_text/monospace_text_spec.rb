require 'jpts_extractor/article_part/inline_text/monospace_text'
require 'jpts_extractor/article_part/inline_text/inline_text'

RSpec.describe JPTSExtractor::ArticlePart::InlineText::MonospaceText do

  let(:inline_text) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('IMPORTANT') }
  let(:monospace) { JPTSExtractor::ArticlePart::InlineText::MonospaceText.new(inline_text) }

  describe '#initialize' do
    it 'constructs some monospace text' do
      monospace
    end
  end

  describe 'inherited methods' do
    it 'represents itself as a string' do
      expect(monospace.to_s).to eq(
        "{:\"font-family\"=>\"monospace\"} IMPORTANT"
      )
    end

    it 'formats itself' do
      formatter = instance_double('Formatter')
      expect(formatter).to receive(:format).with(inline_text)
      monospace.format(formatter)
    end
  end
end
