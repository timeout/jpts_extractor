require 'jpts_extractor'
require 'jpts_extractor/article_part/section'
require 'jpts_extractor/article_part/text'
require 'jpts_extractor/article_part/inline_text/inline_text'
require 'pathname'

RSpec.describe JPTSExtractor::ArticlePart::Section do
  describe 'update text in sections' do
    it 'updates text' do
      fixture = Pathname.new 'spec/fixture/0123221.xml'
      article = JPTSExtractor.extract fixture.open
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
  end
end
