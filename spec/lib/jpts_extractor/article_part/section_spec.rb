require 'jpts_extractor/article_part/section'
require 'jpts_extractor/article_part/text'
require 'jpts_extractor/article_part/inline_text/inline_text'
require 'jpts_extractor/article_part/inline_text/bold_text'

RSpec.describe JPTSExtractor::ArticlePart::Section do

  let (:section) { JPTSExtractor::ArticlePart::Section.new }

  describe '#title=' do
    it 'adds a title to the section' do
      section.title = 'Author Summary'
    end
  end

  describe '#title' do
    let(:title) { 'Author Summary' }
    it 'reads a title' do
      section.title = title
      expect(section.title).to eq(title)
    end
  end

  describe 'nesting' do
    describe '#depth' do
      it 'isnt nested' do
        expect(section.depth).to eq(0)
      end

      it 'depth is 1' do
        section.bump_depth
        expect(section.depth).to eq(1)
      end
    end
  end

  describe '#add_block' do
    it 'adds a block to the section' do
      section.add_block(:block)
    end

    it 'adds a text block' do
      this = build(:this)
      important = build(:important)
      bold = build(:bold)
      contents = build(:text)

      text = JPTSExtractor::ArticlePart::Text.new
      text.add_fragment(this)
        .add_fragment(JPTSExtractor::ArticlePart::InlineText::ItalicText.new(important))
        .add_fragment(JPTSExtractor::ArticlePart::InlineText::BoldText.new(bold))
        .add_fragment(contents)
      section.add_block text
      section.add_block text.dup
      section.each do |sec|
        expect(sec.to_s).to eq('This is some important bold text')
      end
    end
  end

  describe '#each' do
    it 'iterates over the blocks in the section' do
      block_stub = double('Block')
      allow(block_stub).to receive_messages(format: 'output')
      section.add_block(block_stub)
      section.each do |sec|
        expect sec.respond_to? :format
      end
    end
  end

end
