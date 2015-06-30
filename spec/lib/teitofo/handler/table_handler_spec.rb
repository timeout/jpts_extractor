require 'teitofo/handler/table_handler'
require 'teitofo/formatter/xml_formatter/table'

require 'builder'

RSpec.describe TeiToFo::Handler::TableHandler do

  let(:subhandler) { TeiToFo::Handler::TableHandler.new }

  describe '#on_start_element' do
    it 'delegates to a table cell handler on :th' do
      subhandler.on_start_element(:th)
      expect(subhandler.cell_handler).not_to be_nil

      subhandler.on_attr(:align, 'left')
      expect(subhandler.cell_handler.builder.table_cell.styles)
        .to include(align: 'left')

      subhandler.on_start_element(:italic)
      subhandler.on_text('influente')
      table_cell = subhandler.cell_handler.builder.table_cell
      expect(table_cell.text_block.fragments.first.text)
        .to eq('influente')
    end
  end

  describe '#on_end_element' do
    it 'unloads the cell_handler on :th' do
      subhandler.on_start_element(:th)
      subhandler.on_end_element(:th)
      expect(subhandler.cell_handler).to be_nil
    end

    it 'adds a cell to a row on :th' do
      subhandler.on_start_element(:thead)
      subhandler.on_start_element(:th)
      subhandler.on_attr(:align, 'left')
      subhandler.on_start_element(:italic)
      subhandler.on_text('influente')
      subhandler.on_end_element(:italic)
      subhandler.on_end_element(:th)
      table = subhandler.builder.table
      expect(table.header_rows.size).to be(1)
    end
  end

end
