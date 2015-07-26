require 'jpts_extractor'
require 'jpts_extractor/article_part/section'
require 'jpts_extractor/article_part/text'
require 'jpts_extractor/article_part/inline_text/inline_text'
require 'pathname'

# this is not so much a spec as an example
RSpec.describe JPTSExtractor::ArticlePart::Section, broken: true do

  let(:fixture) { Pathname.new 'spec/fixture/0123221.xml' }
  let(:article) { JPTSExtractor.extract fixture.open }

  def print_article(article)
    article.body.sections.each do |section|
      section.each(section) do |block|
        puts block if block.is_a? JPTSExtractor::ArticlePart::Text
      end
    end
  end

  describe 'updates text sections' do
    it 'prints text' do
      print_article(article)
    end

    it 'maps the text blocks in a section' do

      sections = article.body.sections.map do |section|
        section = section.map(section) do |block|
          if block.is_a? JPTSExtractor::ArticlePart::Text
            block = block.map do |frag|
              if frag.is_a? JPTSExtractor::ArticlePart::InlineText::Citation
                frag.text = 'CITATION'
              else
                frag = frag
              end
            end
          end
        end
      end

      sections.each do |section|
        article.body << section
      end
      print_article(article)
      puts "=========================="
      puts
    end

    it 'maps! the text blocks in a section' do

      article.body.sections.map do |section|
        section.map!(section) do |block|
          if block.is_a? JPTSExtractor::ArticlePart::Text
            text = JPTSExtractor::ArticlePart::Text.new
            block.each do |frag|
              if frag.is_a? JPTSExtractor::ArticlePart::InlineText::Citation
                frag.text = '!!CITE!!'
              else
                frag = frag
              end
              text.add_fragment frag
            end
            block = text
          else
            block = block
          end
        end
      end

      puts "printing article after map!"
      print_article(article)

    end

  end
end
