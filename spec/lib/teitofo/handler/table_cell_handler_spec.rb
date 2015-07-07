require 'teitofo/handler/table_cell_handler'

RSpec.describe TeiToFo::Handler::TableCellHandler do

  let(:subhandler) { TeiToFo::Handler::TableCellHandler.new }

  describe '#initialize' do
    it 'instantiates a TableCellHandlerBuilder' do
      expect(subhandler.builder).not_to be_nil
      expect(subhandler.builder.class).to be(TeiToFo::Builder::TableCellBuilder)
    end
  end

  describe '#on_attr' do
    it 'adds styles to a table_cell' do
      subhandler.on_attr(:align, 'left')
      subhandler.on_attr(:rowspan, '1')
      table_cell = subhandler.builder.table_cell
      expect(table_cell.styles).to include(align: 'left')
      expect(table_cell.styles).to include(rowspan: '1')
    end
  end

  describe '#on_start_element' do
    it 'pushes an element onto the event stack' do
      subhandler.on_start_element(:italic)
      expect(subhandler.event_stack.top).to be(:italic)
    end
  end

  describe '#on_end_element' do
    it 'pops an element off the stack' do
      subhandler.on_start_element(:italic)
      subhandler.on_end_element(:italic)
      expect(subhandler.event_stack.empty?).to be_truthy
    end
  end

  describe '#on_text' do
    it 'creates a fragment' do
      subhandler.on_text('Spreekt u Engels?')
      table_cell = subhandler.builder.table_cell
      expect(table_cell.text.fragments.first.text).to eq('Spreekt u Engels?')
    end

    it 'creates a styled text block' do
      subhandler.on_start_element(:td)
      subhandler.on_start_element(:italic)
      subhandler.on_start_element(:bold)
      subhandler.on_text('Goede nacht , zoete prins')
      table_cell = subhandler.builder.table_cell
      expect(table_cell.text.fragments.first.styles)
        .to include('font-style': 'italic')
    end
  end
end
