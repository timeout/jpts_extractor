require 'jpts_extractor/handler/figure_handler'

RSpec.describe JPTSExtractor::Handler::FigureHandler do

  let(:subhandler) { JPTSExtractor::Handler::FigureHandler.new }

  describe '#on_start_element' do
    it 'switches on text on :object-id' do
      subhandler.on_start_element :'object-id'
      expect(subhandler.text?).to be_truthy
    end
  end

  describe '#on_end_element' do
    it 'switches off text on :object-id' do
      subhandler.on_start_element :'object-id'
      subhandler.on_text '10.1371/journal.pone.0033591.g001'
      subhandler.on_end_element :'object-id'
      expect(subhandler.text?).to be_falsey
    end

    it 'builds a basename_path' do
      subhandler.on_start_element :'object-id'
      subhandler.on_text '10.1371/journal.pone.0033591.g001'
      subhandler.on_end_element :'object-id'
      figure = subhandler.builder.fig
      expect(figure.graphic_basename.to_s).to eq('journal.pone.0033591.g001')
    end
  end

  describe '== captions ==' do
    it 'delegates to a caption handler' do
      subhandler.on_start_element :caption
      subhandler.on_start_element :title
      subhandler.on_text 'Margin of Stability (MoS) for each group at each event.'
      subhandler.on_end_element :title
      subhandler.on_start_element :p
      subhandler.on_text 'Something inane'
      subhandler.on_end_element :p
      subhandler.on_end_element :caption

      figure = subhandler.builder.fig
      expect(figure.caption).not_to be_nil
    end
  end
end
