require 'teitofo/formatter/xml_formatter/caption'
require 'teitofo/article_part/caption'
require 'teitofo/article_part/text'
require 'teitofo/article_part/inline_text/inline_text'
require 'teitofo/article_part/inline_text/italic_text'

require 'builder'

RSpec.describe TeiToFo::Formatter::XmlFormatter::Caption do

  let(:caption) { TeiToFo::ArticlePart::Caption.new }
  let(:@text) { TeiToFo::ArticlePart::Text.new }
  let(:xml) { Builder::XmlMarkup.new(indent: 2) }

  describe '#format' do
    it "it formats a caption's title" do
      title = TeiToFo::ArticlePart::InlineText::InlineText.new('Treasure Island')
      text.add_fragment(title)
      caption.title = text
      cap_formatter = TeiToFo::Formatter::XmlFormatter::Caption.new(xml)
      cap_formatter.format(caption)
      expect(xml.target!).to eq('<fo:inline>Treasure Island</fo:inline>')
    end

    it "formats a caption's paragraph" do
      paragraph = TeiToFo::ArticlePart::InlineText::InlineText.new(
        %{The most popular pirate story ever written in English,
          featuring one of literature’s most beloved “bad guys,”
          Treasure Island has been happily devoured by several
          generations of boys—and girls—and}) 
      grownups = TeiToFo::ArticlePart::InlineText::InlineText.new('grownups.')
      grownups = TeiToFo::ArticlePart::InlineText::ItalicText.new(grownups)
      text.add_fragment(paragraph).add_fragment(grownups)
      caption.paragraph = text
      cap_formatter = TeiToFo::Formatter::XmlFormatter::Caption.new(xml)
      cap_formatter.format(caption)
      expect(xml.target!).to eq('<fo:inline>Treasure Island</fo:inline>')
    end
  end
end
