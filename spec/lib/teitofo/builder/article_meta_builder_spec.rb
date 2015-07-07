require 'teitofo/builder/article_meta_builder'
require 'teitofo/article_part/article_meta'

RSpec.describe TeiToFo::Builder::ArticleMetaBuilder do

  let(:builder) { TeiToFo::Builder::ArticleMetaBuilder.new }

  describe '#initialize' do
    it 'creates a new ArticleMeta object' do
      expect(builder.article_meta.class)
        .to eq(TeiToFo::ArticlePart::ArticleMeta)
    end
  end

  describe "#conceived!" do
    it "assigns text to article meta's conceived" do
      builder.text!
      builder.create_fragment('I did it all!', [])
      builder.conceived!
      expect(builder.article_meta.conceived.fragments.first.text).to eq('I did it all!')
    end
  end

  describe "#conflict!" do
    it "assigns text to article meta's conflict" do
      builder.text!
      builder.create_fragment('I did it all!', [])
      builder.conflict!
      expect(builder.article_meta.conflict.fragments.first.text).to eq('I did it all!')
    end
  end
end
