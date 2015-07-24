require 'jpts_extractor/article_part/inline_text/italic_text'
require 'jpts_extractor/article_part/inline_text/inline_text'

RSpec.describe JPTSExtractor::ArticlePart::InlineText::ItalicText do

  let(:inline_text) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('IMPORTANT') }
  let(:italics) { JPTSExtractor::ArticlePart::InlineText::ItalicText.new(inline_text) }

  describe '#initialize' do
    it 'constructs some italic text' do
      italics
    end
  end

  describe 'inherited methods' do
    it 'represents itself as a string' do
      expect(italics.to_s).to eq(
        "{:\"font-style\"=>\"italic\"} IMPORTANT"
      )
    end

    it 'is not a citation' do
      expect(italics.citation?).to be_falsey
    end

    it 'formats itself' do
      formatter = instance_double('Formatter')
      expect(formatter).to receive(:format).with(inline_text)
      italics.format(formatter)
    end
  end
end
