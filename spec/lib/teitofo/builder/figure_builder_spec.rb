require 'teitofo/builder/figure_builder'

RSpec.describe TeiToFo::Builder::FigureBuilder do

  let(:builder) { TeiToFo::Builder::FigureBuilder.new }

  describe '#basename_path' do
    it 'creates and assigns a graphics_path' do
      value = '10.1371/journal.pone.0033591.g001'
      builder.basename_path value
      expect(builder.fig.graphic_basename.to_s).to eq('journal.pone.0033591.g001')
    end
  end

  describe '#label!' do
    it 'builds a label' do
      builder.text_block!
      builder.create_fragment("Don't change the earth!", [])
      builder.create_fragment("Don't change a thing!", [:italic])
      builder.label!
      figure = builder.fig
      expect(figure.label).not_to be_nil
      expect(figure.label.fragments[1].styles).to include('font-style': 'italic')
    end
  end
end
