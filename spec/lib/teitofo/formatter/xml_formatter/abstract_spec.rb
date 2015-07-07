require 'teitofo/formatter/xml_formatter/abstract'
require 'teitofo/article_part/abstract'
require 'teitofo/article_part/text'
require 'teitofo/article_part/inline_text/inline_text'

require 'builder'

RSpec.describe TeiToFo::Formatter::XmlFormatter::Abstract do

  let(:xml) { Builder::XmlMarkup.new(indent: 2) }
  let(:abstract_formatter) { TeiToFo::Formatter::XmlFormatter::Abstract.new(xml) }

  describe 'title' do
    before(:each) do
      title_text = TeiToFo::ArticlePart::Text.new
      title_text.add_fragment(
        TeiToFo::ArticlePart::InlineText::InlineText.new('Treasure Island'))
      @abstract = TeiToFo::ArticlePart::Abstract.new
      @abstract.title = title_text
    end

    it 'formats a title' do
      abstract_formatter.format(@abstract)
      expect(xml.target!).to eq(
        "<fo:block font-size=\"9pt\" font-family=\"sans-serif\" font-weight=\"bold\">\n" +
        "  <fo:inline>Treasure Island</fo:inline>\n" +
        "</fo:block>\n"
      )
    end
  end

  describe 'paragraph' do
    let(:contents) {
      %{I remember him as if it were yesterday, as he came plodding to the
      inn door, his sea-chest following behind him in a hand-barrow--a
      tall, strong, heavy, nut-brown man, his tarry pigtail falling over the
      shoulder of his soiled blue coat, his hands ragged and scarred, with
      black, broken nails, and the sabre cut across one cheek, a dirty, livid
      white.}
    }
    before(:each) do
      paragraph_text = TeiToFo::ArticlePart::Text.new
      paragraph_text.add_fragment(
        TeiToFo::ArticlePart::InlineText::InlineText.new(contents))
      @abstract = TeiToFo::ArticlePart::Abstract.new
      @abstract.paragraph = paragraph_text
    end

    it 'formats a paragraph' do
      abstract_formatter.format(@abstract)
      expect(xml.target!).to eq(
        "<fo:block font-size=\"8pt\" font-family=\"serif\">\n" +
        "  <fo:inline>#{contents}</fo:inline>\n" +
        "</fo:block>\n"
      )
    end
  end

  # describe 'sections' do
  #   it 'delegates to a section formatter' do
  #   end
  # end
end
