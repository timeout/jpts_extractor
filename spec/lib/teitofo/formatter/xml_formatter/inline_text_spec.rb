require 'teitofo/formatter/xml_formatter/inline_text'
require 'teitofo/article_part/inline_text/inline_text'
require 'teitofo/article_part/inline_text/bold_text'
require 'teitofo/article_part/inline_text/italic_text'

require 'builder'

RSpec.describe TeiToFo::Formatter::XmlFormatter::InlineText do

  let(:xml) { Builder::XmlMarkup.new(indent: 2) }
  let(:formatter) { TeiToFo::Formatter::XmlFormatter::InlineText.new(xml) }

  describe '#initialize' do
    it 'constructs an inline formatter' do
      formatter 
    end
  end

  describe '#format' do

    let(:plain_text_fragment) { TeiToFo::ArticlePart::InlineText::InlineText.new(
      'What we need here is a mock') }
    let(:cite) { TeiToFo::ArticlePart::InlineText::InlineText.new('[1]') }
    let(:bold_text) { TeiToFo::ArticlePart::InlineText::BoldText.new(plain_text_fragment) }
    let(:bold_italicized_text) {TeiToFo::ArticlePart::InlineText::ItalicText.new(bold_text) }

    it 'formats inline text using the formatter' do
      formatter.format(plain_text_fragment)
      expect(formatter.output).to eq("<fo:inline>What we need here is a mock</fo:inline>\n")
    end

    it 'formats bold text using the formatter' do
      formatter.format(bold_text) 
      expect(formatter.output).to eq(
        "<fo:inline font-weight=\"bold\">What we need here is a mock</fo:inline>\n")
    end

    it 'formats bold-italicized text using the formatter' do
      formatter.format(bold_italicized_text)
      expect(formatter.output).to eq(
        "<fo:inline font-weight=\"bold\" font-style=\"italic\">What we need here is a mock</fo:inline>\n")
    end

    it 'formats a citation' do
      formatter.format(TeiToFo::ArticlePart::InlineText::Citation.new(cite))
      expect(formatter.output).to eq "<fo:inline>[1]</fo:inline>\n"
    end
  end
end
