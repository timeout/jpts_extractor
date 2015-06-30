require 'teitofo/handler/table_handler'
require 'teitofo/formatter/xml_formatter/table'

require 'builder'

RSpec.describe TeiToFo::Handler::TableHandler do

  let(:subhandler) { TeiToFo::Handler::TableHandler.new }

  describe '#initialize' do
    it 'creates a builder' do
      expect(subhandler.builder).not_to be_nil
    end

    it 'creates a TableBuilder' do
      expect(subhandler.builder.class).to eq(TeiToFo::Builder::TableBuilder)
    end
  end

  describe '== label == ' do
    describe '#on_start_element' do
      it 'switches on text' do
        subhandler.on_start_element(:label)
        expect(subhandler.text?).to be_truthy
      end

      it 'instantiates a label text_handler' do
        subhandler.on_start_element(:label)
        expect(subhandler.text_handler.name).to eq(:label)
        expect(subhandler.text_handler.text_block_handler.class)
          .to eq(TeiToFo::Handler::TextBlockHandler)
      end
    end

    describe '#on_end_element' do

      let(:xml) { Builder::XmlMarkup.new(indent: 2) }
      let(:table_formatter) { TeiToFo::Formatter::XmlFormatter::Table.new(xml) }

      it 'switches off text' do
        subhandler.on_start_element(:label)
        subhandler.on_end_element(:label)
        expect(subhandler.text?).to be_falsey
        expect(subhandler.text_handler).to be_nil
      end

      it 'assigns the :label text_block to the builder', broken: true do
        subhandler.on_start_element(:label)
        subhandler.on_text('Table 12')
        subhandler.on_end_element(:label)
        table = subhandler.builder.table
        expect(table.label_text_block.class)
          .to eq(TeiToFo::ArticlePart::TextBlock)
        expect(table.label_text_block.to_s).to eq('Table 12')
        table.format(table_formatter)
        expect(table_formatter.output).to eq('something')
      end
    end

    describe '#on_text' do
      it 'delegates to the :label text_handler' do
        subhandler.on_start_element(:label)
        subhandler.on_text('Table 12')
        expect(subhandler.text_handler.text_block_handler.builder.text_block.to_s)
          .to eq('Table 12')
      end
    end
  end

  describe '== caption/title ==' do
    describe '#on_start_element' do
      it 'switches on text' do
        subhandler.on_start_element(:caption)
        expect(subhandler.text?).to be_falsey
        subhandler.on_start_element(:title)
        expect(subhandler.text?).to be_truthy
      end

      it 'instantiates a label text_handler' do
        subhandler.on_start_element(:caption)
        subhandler.on_start_element(:title)
        expect(subhandler.text_handler.name).to eq(:title)
      end
    end

    describe '#on_end_element;' do
      it 'switches off text' do
        subhandler.on_start_element(:caption)
        subhandler.on_start_element(:title)
        subhandler.on_end_element(:title)
        expect(subhandler.text?).to be_falsey
      end

      it 'assigns :title text_block to the builder' do
        subhandler.on_start_element(:caption)
        subhandler.on_start_element(:title)
        subhandler.on_text('List of Analysed Samples')
        subhandler.on_end_element(:title)
        expect(subhandler.builder.table.title_text_block.class).to eq(TeiToFo::ArticlePart::TextBlock)
      end
    end
  end

  describe '== table==' do
    describe '== columns ==' do
      describe '#on_start_element' do
        it 'switches on attr' do
          subhandler.on_start_element(:col)
          expect(subhandler.attr?).to be_truthy
        end

        it 'creates a column hash' do
          subhandler.on_start_element(:col)
          expect(subhandler.column.class).to eq(Hash)
        end
      end

      describe '#on_end_element' do
        it 'switches off attr' do
          subhandler.on_start_element(:col)
          subhandler.on_end_element(:col)
          expect(subhandler.attr?).to be_falsey
        end

        it 'assigns col to the builder' do
          subhandler.on_start_element(:col)
          subhandler.on_attr(:align, 'left')
          subhandler.on_attr(:valign, 'middle')
          subhandler.on_end_element(:col)
          expect(subhandler.builder.columns).not_to be_nil
        end

        it 'creates a column_group' do
          subhandler.on_start_element(:colgroup)
          subhandler.on_start_element(:col)
          subhandler.on_attr(:align, 'left')
          subhandler.on_attr(:valign, 'middle')
          subhandler.on_end_element(:col)
          subhandler.on_start_element(:col)
          subhandler.on_attr(:align, 'left')
          subhandler.on_attr(:valign, 'middle')
          subhandler.on_end_element(:col)
          subhandler.on_end_element(:colgroup)
          expect(subhandler.builder.table.column_group.size).to be(2)
        end
      end

      describe '#on_attr' do
        it 'populates the column hash' do
          subhandler.on_start_element(:col)
          subhandler.on_attr(:align, 'left')
          expect(subhandler.column[:align]).to eq('left')
        end
      end
    end

    describe '== table header ==' do
      describe '#on_start_element' do
        it 'sets the row_name to thead' do
          subhandler.on_start_element :thead
          subhandler.row_type == :thead
        end

        it 'switches on text' do
          subhandler.on_start_element(:th)
          expect(subhandler.text?).to be_truthy
        end

        it 'switches on attr' do
          subhandler.on_start_element(:th)
          expect(subhandler.attr?).to be_truthy
        end

        it 'creates a cell' do
          subhandler.on_start_element(:thead)
          subhandler.on_start_element(:tr)
          subhandler.on_start_element(:th)
          expect(subhandler.cell).not_to be_nil
          expect(subhandler.cell.name).to be :thead
        end

        it 'creates a cell' do
          subhandler.on_start_element(:thead)
          subhandler.on_start_element(:td)
          subhandler.on_start_element(:th)
          expect(subhandler.cell).not_to be_nil
          expect(subhandler.cell.name).to be :thead
        end

        it 'creates a cell' do
          subhandler.on_start_element(:tbody)
          subhandler.on_start_element(:td)
          subhandler.on_start_element(:th)
          expect(subhandler.cell).not_to be_nil
          expect(subhandler.cell.name).to be :tbody
        end

      end

      describe '#on_attr' do
        it 'populates the cells option hash' do
          subhandler.on_start_element(:th)
          subhandler.on_attr(:align, 'left')
          expect(subhandler.cell.options[:align]).to eq('left')
        end
      end

      describe '#on_text' do
        it 'delegates to the cell text_block handler' do
          subhandler.on_start_element(:th)
          subhandler.on_text('Apolygus lucorum') 
          expect(subhandler.cell.text_block_handler.builder.text_block.to_s)
            .to eq('Apolygus lucorum')
        end
      end

      describe '#on_end_element' do
        it 'sets the row_type to nil' do
          subhandler.on_start_element(:thead)
          subhandler.on_end_element(:thead)
          expect(subhandler.row_type).to be_nil
        end

        it 'sets the row_type to nil' do
          subhandler.on_start_element(:tbody)
          subhandler.on_end_element(:tbody)
          expect(subhandler.row_type).to be_nil
        end

        it 'switches off text' do
          subhandler.on_start_element(:th)
          subhandler.on_attr(:align, 'left')
          subhandler.on_attr(:rowspan, '1')
          subhandler.on_end_element(:th)
          expect(subhandler.text?).to be_falsey
        end

        it 'switches off attr' do
          subhandler.on_start_element(:th)
          subhandler.on_attr(:align, 'left')
          subhandler.on_attr(:rowspan, '1')
          subhandler.on_end_element(:th)
          expect(subhandler.attr?).to be_falsey
        end

        it 'adds a cell to the current row in builder' do
          subhandler.on_start_element(:thead)
          subhandler.on_start_element(:th)
          subhandler.on_attr(:align, 'left')
          subhandler.on_attr(:rowspan, '1')
          subhandler.on_end_element(:th)
          expect(subhandler.builder.row.size).to eq(1)
          expect(subhandler.builder.row.first.options[:align]).to eq('left')
        end

        it 'adds the current row to the table header' do
          subhandler.on_start_element(:thead)
          subhandler.on_start_element(:tr)
          subhandler.on_start_element(:th)
          subhandler.on_attr(:align, 'left')
          subhandler.on_attr(:rowspan, '1')
          subhandler.on_start_element(:italic)
          subhandler.on_text('incroyable')
          subhandler.on_end_element(:italic)
          subhandler.on_end_element(:th)
          subhandler.on_end_element(:tr)
          table_header_rows = subhandler.builder.table.table_header_rows
          expect(table_header_rows.size)
            .to eq 1
          cell = table_header_rows.first.first
          expect(cell.name).to be(:thead)
          expect(cell.options).to include(align: 'left')
          text_block = cell.text_block_handler.builder.text_block
          expect(text_block.to_s).to eq('incroyable')
          inline_text = text_block.fragments.first
          puts inline_text
          puts inline_text.class
          expect(inline_text.styles).to include('font-family': 'italic')
        end
      end
    end

    describe '== table body ==' do
      describe '#on_end_element' do
        it 'adds the current row to the table header' do
          subhandler.on_start_element(:tr)
          subhandler.on_start_element(:td)
          subhandler.on_attr(:align, 'left')
          subhandler.on_attr(:rowspan, '1')
          subhandler.on_text('Contents')
          subhandler.on_end_element(:td)
          subhandler.on_start_element(:td)
          subhandler.on_attr(:align, 'left')
          subhandler.on_attr(:rowspan, '1')
          subhandler.on_text('Form')
          subhandler.on_end_element(:td)
          subhandler.on_end_element(:tr)
          expect(subhandler.builder.table.table_body_rows.size)
            .to eq 1
        end
      end
    end

  end
end
