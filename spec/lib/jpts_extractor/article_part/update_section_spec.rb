require 'jpts_extractor'
require 'jpts_extractor/article_part/section'
require 'jpts_extractor/article_part/text'
require 'jpts_extractor/article_part/inline_text/inline_text'
require 'pathname'

RSpec.describe JPTSExtractor::ArticlePart::Section do

  let(:fixture) { Pathname.new 'spec/fixture/0123221.xml' }
  let(:article) { JPTSExtractor.extract fixture.open }

  describe 'update text in sections' do
    it 'updates text', broken: true  do
      section = article.body.sections.first
      section.each do |block|
        puts block.to_s if block.is_a? JPTSExtractor::ArticlePart::Text
      end
      puts 'updating text'
      section.first = JPTSExtractor::ArticlePart::Text.new
      section.first.add_fragment JPTSExtractor::ArticlePart::InlineText::InlineText
        .new('Updated text object')
      puts 'update:'
      article.body.sections.first.first = section.first
      article.body.sections.first.each do |block|
        puts block.to_s if block.is_a? JPTSExtractor::ArticlePart::Text
      end
    end

    it 'maps the text blocks in a section' do
      section = article.body.sections.first
      section.map_text! do |text_block|
        text_block = JPTSExtractor::ArticlePart::Text.new
        text_block.add_fragment(JPTSExtractor::ArticlePart::InlineText::InlineText
          .new('new text for you'))
      end

      expect(section.first.to_s).to eq 'new text for you' 
      
    end
  end
end
