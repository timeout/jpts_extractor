require 'jpts_extractor/handler/table_handler'

require 'builder'

RSpec.describe JPTSExtractor::Handler::TableHandler do

  let(:subhandler) { JPTSExtractor::Handler::TableHandler.new }

  describe '#on_start_element' do
    it 'switches on attr on :col' do
      subhandler.on_start_element(:col)
      expect(subhandler.attr?).to be_truthy
    end

    it 'delegates to a table cell handler on :th' do
      subhandler.on_start_element(:th)
      expect(subhandler.cell_handler).not_to be_nil

      subhandler.on_attr(:align, 'left')
      expect(subhandler.cell_handler.builder.table_cell.styles)
        .to include(align: 'left')

      subhandler.on_start_element(:italic)
      subhandler.on_text('influente')
      table_cell = subhandler.cell_handler.builder.table_cell
      expect(table_cell.text.fragments.first.text)
        .to eq('influente')
    end

    it 'delegates to a table cell handler on :td' do
      subhandler.on_start_element(:td)
      expect(subhandler.cell_handler).not_to be_nil

      subhandler.on_attr(:align, 'left')
      expect(subhandler.cell_handler.builder.table_cell.styles)
        .to include(align: 'left')

      subhandler.on_start_element(:italic)
      subhandler.on_text('influente')
      table_cell = subhandler.cell_handler.builder.table_cell
      expect(table_cell.text.fragments.first.text)
        .to eq('influente')
    end

    it 'changes the row_state to header' do
      subhandler.on_start_element(:thead)
      expect(subhandler.row_state).to be(:thead)
    end

    it 'changes the row_state to body' do
      subhandler.on_start_element(:tbody)
      expect(subhandler.row_state).to be(:tbody)
    end
  end

  describe '#on_end_element' do
    it 'switches attr off on :col' do
      subhandler.on_start_element(:col)
      subhandler.on_end_element(:col)
      expect(subhandler.attr?).to be_falsey
    end

    it 'unloads the cell_handler on :th' do
      subhandler.on_start_element(:th)
      subhandler.on_end_element(:th)
      expect(subhandler.cell_handler).to be_nil
    end

    it 'adds a cell to a header row on :thead, :th' do
      subhandler.on_start_element(:thead)
      subhandler.on_start_element(:tr)
      subhandler.on_start_element(:th)
      subhandler.on_attr(:align, 'left')
      subhandler.on_start_element(:italic)
      subhandler.on_text('influente')
      subhandler.on_end_element(:italic)
      subhandler.on_end_element(:th)
      subhandler.on_end_element(:tr)
      table = subhandler.builder.table
      expect(table.header_rows.size).to be(1)
      expect(table.header_rows.first.size).to be(1)
    end

    it 'adds a cell to a header row on :thead, :td' do
      subhandler.on_start_element(:thead)
      subhandler.on_start_element(:tr)
      subhandler.on_start_element(:td)
      subhandler.on_attr(:align, 'left')
      subhandler.on_start_element(:bold)
      subhandler.on_text('influente')
      subhandler.on_end_element(:bold)
      subhandler.on_end_element(:td)
      subhandler.on_end_element(:tr)
      table = subhandler.builder.table
      expect(table.header_rows.size).to be(1)
    end

    it 'adds a cell to a body row on :tbody, :td' do
      subhandler.on_start_element(:tbody)
      subhandler.on_start_element(:tr)
      subhandler.on_start_element(:td)
      subhandler.on_attr(:align, 'left')
      subhandler.on_start_element(:bold)
      subhandler.on_text('influente')
      subhandler.on_end_element(:bold)
      subhandler.on_end_element(:td)
      subhandler.on_end_element(:tr)
      table = subhandler.builder.table
      expect(table.body_rows.size).to be(1)
    end

    it 'unloads the header row state' do
      subhandler.on_start_element(:thead)
      subhandler.on_end_element(:thead)
      expect(subhandler.row_state).to be_nil
    end

    it 'unloads the body row state' do
      subhandler.on_start_element(:tbody)
      subhandler.on_end_element(:tbody)
      expect(subhandler.row_state).to be_nil
    end
  end

  describe '#on_attr' do
    it 'adds column styling' do
      subhandler.on_start_element(:col)
      subhandler.on_attr(:align, 'left')
      subhandler.on_end_element(:col)
      table = subhandler.builder.table
      expect(table.columns.first).to include(align: 'left')
    end
  end

end
