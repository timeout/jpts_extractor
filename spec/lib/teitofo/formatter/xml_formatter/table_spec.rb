require 'teitofo/article_part/table'
require 'teitofo/article_part/text_block'
require 'teitofo/article_part/inline_text/inline_text'
require 'teitofo/formatter/xml_formatter/table'

require 'builder'

RSpec.describe TeiToFo::Formatter::XmlFormatter::Table do

  let(:xml) { Builder::XmlMarkup.new(indent: 2) }
  let(:formatter) { TeiToFo::Formatter::XmlFormatter::Table.new(xml) }

  describe '#initialize' do
    it 'creates a text_block formatter' do
      expect(formatter.text_block_formatter).not_to be_nil
    end
  end

  describe '#format' do

    let(:table) { TeiToFo::ArticlePart::Table.new }
    let(:contents) { 'Table 1.' }

    describe 'it formats a table', broken: true do
      it 'formats the label text block' do
        label = TeiToFo::ArticlePart::TextBlock.new
        label << TeiToFo::ArticlePart::InlineText::InlineText.new(contents)
        table.label_text_block = label
        formatter.format(table)
        expect(formatter.xml.target!).to eq(
          "<!-- table -->\n" +
          "<fo:block>\n" +
          "  <fo:inline font-weight=\"bold\">#{contents}</fo:inline>\n" +
          "</fo:block>\n")
      end

      it 'formats the title text block' do
        label = TeiToFo::ArticlePart::TextBlock.new
        label << TeiToFo::ArticlePart::InlineText::InlineText.new(contents)
        table.label_text_block = label

        title = TeiToFo::ArticlePart::TextBlock.new
        title.add_fragment(TeiToFo::ArticlePart::InlineText::InlineText.new('CATT-'))
          .add_fragment(TeiToFo::ArticlePart::InlineText::ItalicText.new(
        TeiToFo::ArticlePart::InlineText::InlineText.new('B')))
          .add_fragment(TeiToFo::ArticlePart::InlineText::InlineText.new(
        'and epidemiological surveillance'))
        table.title_text_block = title

        formatter.format(table)
        expect(formatter.xml.target!).to eq(
          "<!-- table -->\n" +
          "<fo:block>\n" +
          "  <fo:inline font-weight=\"bold\">#{contents}</fo:inline>\n" +
          "  <fo:inline>CATT-</fo:inline>\n" +
          "  <fo:inline font-style=\"italic\">B</fo:inline>\n" +
          "  <fo:inline>and epidemiological surveillance</fo:inline>\n" +
          "</fo:block>\n")
      end
    end
  end
end
