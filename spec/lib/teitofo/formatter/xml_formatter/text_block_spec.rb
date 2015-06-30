require 'teitofo/formatter/xml_formatter/text_block'
require 'teitofo/formatter/xml_formatter/inline_text'

require 'builder'

RSpec.describe TeiToFo::Formatter::XmlFormatter::TextBlock do

  let(:xml) { Builder::XmlMarkup.new(indent: 2) }
  let(:formatter) { TeiToFo::Formatter::XmlFormatter::TextBlock.new(xml) }

  describe '#initialize' do
    it 'constructs an inline formatter' do
      formatter 
    end
  end

  describe '#format' do
    let(:inline) { TeiToFo::ArticlePart::InlineText::InlineText.new }

    it 'formats a block of text' do
      this = inline.dup
      this.text = 'This is some'
      important = inline.dup
      important.text = 'important'
      text = inline.dup
      text.text = 'text'

      text_block = TeiToFo::ArticlePart::TextBlock.new
      text_block.add_fragment(this).add_fragment(important).add_fragment(text)
      formatter.format(text_block)
      expect(formatter.xml.target!).to eq(
        "<fo:block>\n" +
        "  <fo:inline>This is some</fo:inline>\n" +
        "  <fo:inline>important</fo:inline>\n" +
        "  <fo:inline>text</fo:inline>\n" +
        "</fo:block>\n"
      )
    end

    it 'formats a block of text' do
      this = inline.dup
      this.text = 'This is some'
      important = inline.dup
      important.text = 'important'
      important = TeiToFo::ArticlePart::InlineText::ItalicText.new(important)
      text = inline.dup
      text.text = 'text'
      text = TeiToFo::ArticlePart::InlineText::BoldText.new(text)

      text_block = TeiToFo::ArticlePart::TextBlock.new
      text_block.add_fragment(this).add_fragment(important).add_fragment(text)
      formatter.format(text_block)
      expect(formatter.xml.target!).to eq(
        "<fo:block>\n" +
        "  <fo:inline>This is some</fo:inline>\n" +
        "  <fo:inline font-style=\"italic\">important</fo:inline>\n" +
        "  <fo:inline font-weight=\"bold\">text</fo:inline>\n" +
        "</fo:block>\n"
      )
    end
  end

end
