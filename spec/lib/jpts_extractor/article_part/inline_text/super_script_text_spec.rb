require 'jpts_extractor/article_part/inline_text/super_script_text'
require 'jpts_extractor/article_part/inline_text/inline_text'

RSpec.describe JPTSExtractor::ArticlePart::InlineText::SuperScriptText do

  let(:inline_text) { JPTSExtractor::ArticlePart::InlineText::InlineText.new('IMPORTANT') }
  let(:super_script) { JPTSExtractor::ArticlePart::InlineText::SuperScriptText.new(inline_text) }

  describe '#initialize' do
    it 'constructs some super_script text' do
      super_script
    end
  end

  describe 'inherited methods' do
    it 'represents itself as a string' do
      expect(super_script.to_s).to eq(
        "{:\"vertical-align\"=>\"super\", :\"font-size\"=>\"8pt\"} IMPORTANT"
      )
    end

    it 'formats itself' do
      formatter = instance_double('Formatter')
      expect(formatter).to receive(:format).with(inline_text)
      super_script.format(formatter)
    end
  end
end
