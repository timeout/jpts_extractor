require 'teitofo/builder/article_meta_builder'
require 'teitofo/article_part/article_meta'

RSpec.describe TeiToFo::Builder::ArticleMetaBuilder do
  describe '#initialize' do
    it 'creates a new ArticleMeta object' do
      builder = TeiToFo::Builder::ArticleMetaBuilder.new
      expect(builder.article_meta.class)
        .to eq(TeiToFo::ArticlePart::ArticleMeta)
    end
  end
end
