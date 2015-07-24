require 'jpts_extractor/article_part/inline_text/inline_text'

RSpec.describe JPTSExtractor::ArticlePart::InlineText::InlineText do
  
  let(:inline_text) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('This is some text') }
  let(:inline) { JPTSExtractor::ArticlePart::InlineText::InlineText.new }

  describe '#initialize' do
    it 'constructs inline text' do
      inline_text
    end

    it 'constructs inline text without text' do
      inline
    end
  end

  describe '#citation?' do
    it 'switches on a citation' do
      inline_text.switch_citation_on
      expect(inline_text.citation?).to be_truthy
    end

    it 'switches off a citation' do
      inline_text.switch_citation_on
      inline_text.switch_citation_off
      expect(inline_text.citation?).to be_falsey
    end

    it 'isnt\'t a citation' do
      expect(inline_text.citation?).to be_falsey
    end
  end

  describe 'attr_accessor text' do
    let(:text) { 'Changed the text' }
    it 'writes text' do
      inline.text = text
    end

    it 'reads the text' do
      inline.text = text
      expect(inline.text).to eq(text)
    end
  end

  describe 'styling' do
    it 'isnt stylish' do
      expect(inline.stylish?).to be_falsey
    end

    it 'adds a style' do
      inline.add_style :'font-style', 'italic'
    end

    it 'reads a style' do
      inline.add_style :'font-style', 'italic'
      expect(inline.stylish?).to be_truthy
      expect(inline.styles).to eq({'font-style': 'italic'})
    end
  end

  describe '#to_s' do
    it 'outputs a string rep of the inline text' do
      inline_text.add_style :'font-weight', 'bold'
      expect(inline_text.to_s).to eq(
        "{:\"font-weight\"=>\"bold\"} This is some text")
    end
  end

  describe 'inline text is formattable' do
    it 'formats itself' do
      formatter = instance_double('Formatter')
      expect(formatter).to receive(:format).with(inline)
      inline.format(formatter)
    end
  end
end
