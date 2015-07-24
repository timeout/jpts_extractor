require 'jpts_extractor/article_part/inline_text/inline_text_decorator'
require 'jpts_extractor/article_part/inline_text/inline_text'

RSpec.describe JPTSExtractor::ArticlePart::InlineText::InlineTextDecorator do

  let(:inline_text) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('This is some text') }
  let(:decorator) { JPTSExtractor::ArticlePart::InlineText::InlineTextDecorator.new(inline_text) }

  describe '#initialize' do
    it 'constructs a decorator' do
      decorator
    end
  end

  describe 'it delegates to the inline_text objects methods' do
    let(:text) { 'The text has changed' }

    it 'writes text' do
      decorator.text = text
    end

    it 'reads text' do
      expect(decorator.text).to eq(inline_text.text)
    end

    it 'is a citation' do
      decorator.switch_citation_on
      expect(decorator.citation?).to be_truthy
    end

    it 'adds a style' do
      decorator.add_style :'font-weight', 'bold'
    end

    it 'formats itself' do
      formatter = instance_double('Formatter')
      expect(formatter).to receive(:format).with(inline_text)
      decorator.format(formatter)
    end

    it '#to_s' do
      decorator.add_style(:'font-weight', 'bold')
      expect(decorator.to_s).to eq(
        "{:\"font-weight\"=>\"bold\"} This is some text")
    end

  end
end
