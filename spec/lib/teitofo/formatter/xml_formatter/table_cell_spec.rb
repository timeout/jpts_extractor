require 'teitofo/formatter/xml_formatter/table_cell'
require 'teitofo/article_part/inline_text/inline_text'
require 'teitofo/article_part/inline_text/italic_text'

require 'builder'

RSpec.describe TeiToFo::Formatter::XmlFormatter::TableCell do
  describe '#format' do
    let(:text) { TeiToFo::ArticlePart::Text.new }
    let(:content) { TeiToFo::ArticlePart::InlineText::InlineText.new('Apolygus lucorum') }

    let(:cell) { TeiToFo::ArticlePart::TableCell.new }

    let(:xml) { Builder::XmlMarkup.new(indent: 2) }
    let(:formatter) { TeiToFo::Formatter::XmlFormatter::TableCell.new(xml) }

    it 'formats a table cell' do
      text << TeiToFo::ArticlePart::InlineText::ItalicText.new(content)
      cell.text = text
      cell.add_style :align, 'left'
      cell.add_style :rowspan, '1'
      cell.add_style :colspan, '1'
      formatter.column_number = 1
      formatter.format(cell)
      expect(formatter.xml.target!).to eq(
        "<fo:table-cell column-number=\"1\" number-columns-spanned=\"1\">\n" +
        "  <fo:block>\n" +
        "    <fo:inline font-style=\"italic\">Apolygus lucorum</fo:inline>\n" +
        "  </fo:block>\n" +
        "</fo:table-cell>\n"
      )
    end
  end
end
