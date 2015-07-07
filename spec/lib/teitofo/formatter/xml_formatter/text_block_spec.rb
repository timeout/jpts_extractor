require 'teitofo/formatter/xml_formatter/text'
require 'teitofo/formatter/xml_formatter/inline_text'

require 'builder'

RSpec.describe TeiToFo::Formatter::XmlFormatter::Text do

  let(:xml) { Builder::XmlMarkup.new(indent: 2) }
  let(:formatter) { TeiToFo::Formatter::XmlFormatter::Text.new(xml) }

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
      content = inline.dup
      content.text = 'text'

      text = TeiToFo::ArticlePart::Text.new
      text.add_fragment(this).add_fragment(important).add_fragment(content)
      formatter.format(text)
      expect(formatter.xml.target!).to eq(
        "<fo:inline>This is some</fo:inline>\n" +
        "<fo:inline>important</fo:inline>\n" +
        "<fo:inline>text</fo:inline>\n"
      )
    end

    it 'formats a block of text' do
      this = inline.dup
      this.text = 'This is some'
      important = inline.dup
      important.text = 'important'
      important = TeiToFo::ArticlePart::InlineText::ItalicText.new(important)
      content = inline.dup
      content.text = 'text'
      text = TeiToFo::ArticlePart::InlineText::BoldText.new(content)

      text = TeiToFo::ArticlePart::Text.new
      text.add_fragment(this).add_fragment(important).add_fragment(content)
      formatter.format(text)
      expect(formatter.xml.target!).to eq(
        "<fo:inline>This is some</fo:inline>\n" +
        "<fo:inline font-style=\"italic\">important</fo:inline>\n" +
        "<fo:inline font-weight=\"bold\">text</fo:inline>\n"
      )
    end
  end

end
