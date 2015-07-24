require 'jpts_extractor/builder/section_builder'

RSpec.describe JPTSExtractor::Builder::SectionBuilder do

  let(:builder) { JPTSExtractor::Builder::SectionBuilder.new }

  describe '#initialize' do
    it 'instantiates a caption' do
      expect(builder.sec).not_to be_nil
      expect(builder.sec.class).to be(JPTSExtractor::ArticlePart::Section)
    end
  end

  describe '#text!' do
    it 'instantiates a text article part' do
      builder.text!
      expect(builder.text).not_to be_nil
      expect(builder.text.class).to be(JPTSExtractor::ArticlePart::Text)
    end
  end

  describe "#title!" do
    it "assigns text to the section's title" do
      builder.text!
      builder.create_fragment('Questo è', [])
      builder.create_fragment('importante!', [:italic])
      builder.title!
      expect(builder.sec.title.fragments.first.text).to eq('Questo è')
    end
  end

  describe "#paragraph!" do
    let(:text) { JPTSExtractor::ArticlePart::Text.new }
    let(:paragraph) {
      %{When I first brought my cat home from the humane society she was
        a mangy, pitiful animal.}
    }
    it 'adds a paragraph subsection' do
      builder.text!
      builder.create_fragment(paragraph, [])
      builder.paragraph!
      expect(builder.sec.size).to eq(1)
    end
  end


end
