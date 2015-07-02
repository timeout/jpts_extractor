require 'teitofo/formatter/xml_formatter/table'
require 'teitofo/handler/table_handler'
require 'teitofo/article_part/table'

require 'builder'

RSpec.describe TeiToFo::Formatter::XmlFormatter::Table do

  let(:xml) { Builder::XmlMarkup.new(indent: 2) }
  let(:formatter) { TeiToFo::Formatter::XmlFormatter::Table.new(xml) }

  describe '#initialize' do
    it 'creates a table formatter' do
      expect(formatter).not_to be_nil
    end
  end

  describe '#format' do

    let(:subhandler) { TeiToFo::Handler::TableHandler.new }

    it 'formats a table header' do
      subhandler.on_start_element(:thead)
      subhandler.on_start_element(:tr)
      subhandler.on_start_element(:td)
      subhandler.on_attr(:align, 'left')
      subhandler.on_attr(:colspan, '1')
      subhandler.on_start_element(:bold)
      subhandler.on_text('influente')
      subhandler.on_end_element(:bold)
      subhandler.on_end_element(:td)
      subhandler.on_start_element(:td)
      subhandler.on_attr(:align, 'left')
      subhandler.on_attr(:colspan, '1')
      subhandler.on_start_element(:italic)
      subhandler.on_text('affluente')
      subhandler.on_end_element(:italic)
      subhandler.on_end_element(:td)
      subhandler.on_end_element(:tr)

      table = subhandler.builder.table
      formatter.format(table)
      expect(formatter.xml.target!).to eq(
        "<!-- table -->\n" +
        "<fo:table table-layout=\"fixed\" width=\"100%\">\n" +
        "  <!-- columns -->\n" +
        "  <!-- header -->\n" +
        "  <fo:table-header line-height=\"15pt\" font-size=\"8pt\" text-align=\"center\" font-weight=\"bold\" border-color=\"gray\" border-width=\"1.5pt\" border-before-style=\"solid\" border-after-style=\"solid\">\n" +
        "    <fo:table-row>\n" +
        "      <fo:table-cell column-number=\"1\" number-columns-spanned=\"1\">\n" +
        "        <fo:block>\n" +
        "          <fo:inline>influente</fo:inline>\n" +
        "        </fo:block>\n" +
        "      </fo:table-cell>\n" +
        "      <fo:table-cell column-number=\"2\" number-columns-spanned=\"1\">\n" +
        "        <fo:block>\n" +
        "          <fo:inline>affluente</fo:inline>\n" +
        "        </fo:block>\n" +
        "      </fo:table-cell>\n" +
        "    </fo:table-row>\n" +
        "  </fo:table-header>\n" +
        "  <!-- body -->\n" +
        "</fo:table>\n" 
      )
    end

    it 'formats table columns' do
      subhandler.on_start_element(:col)
      subhandler.on_attr(:align, 'left')
      subhandler.on_attr(:valign, 'middle')
      subhandler.on_attr(:span, '1')
      subhandler.on_end_element(:col)
      subhandler.on_start_element(:col)
      subhandler.on_attr(:align, 'left')
      subhandler.on_attr(:valign, 'middle')
      subhandler.on_attr(:span, '1')
      subhandler.on_end_element(:col)

      table = subhandler.builder.table
      formatter.format(table)
      expect(formatter.xml.target!).to eq(
        "<!-- table -->\n" +
        "<fo:table table-layout=\"fixed\" width=\"100%\">\n" +
        "  <!-- columns -->\n" +
        "  <fo:table-column column-number=\"1\" column-width=\"proportional-column-width(1)\"/>\n" +
        "  <fo:table-column column-number=\"2\" column-width=\"proportional-column-width(1)\"/>\n" +
        "  <!-- header -->\n" +
        "  <!-- body -->\n" +
        "</fo:table>\n"
      )
    end
  end
end
