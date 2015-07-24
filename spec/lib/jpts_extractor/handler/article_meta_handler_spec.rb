require 'jpts_extractor/handler/article_meta_handler'

RSpec.describe JPTSExtractor::Handler::ArticleMetaHandler do

  let (:subhandler) { JPTSExtractor::Handler::ArticleMetaHandler.new }

  describe '#initialize' do
    it 'creates a builder' do
      expect(subhandler.builder).not_to be_nil
    end

    it 'creates an ArticleMetaBuilder' do
      expect(subhandler.builder.class).to be(JPTSExtractor::Builder::ArticleMetaBuilder)
    end
  end

  describe '== subject ==' do
    describe '#on_start_element' do
      it 'switches on text' do
        subhandler.on_start_element :subject
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_end_element' do
      let(:subject) { 'Electronic Biliography' }
      it 'switches off text' do
        subhandler.on_start_element :subject
        subhandler.on_end_element :subject
        expect(subhandler.text?).to be_falsey
      end

      it 'assigns text to the builder' do
        subhandler.on_start_element :subject
        subhandler.on_text( subject ) 
        subhandler.on_end_element :subject

        expect(subhandler.builder.article_meta.subject).to eq( subject )
      end
    end
  end

  describe '== article title ==' do

    describe '#on_end_element' do
      let(:article_title) { 'Easy Peasy Citations' }
      it 'switches off text' do
        subhandler.on_start_element :'article-title'
        subhandler.on_end_element :'article-title'
        expect(subhandler.text?).to be_falsey
      end

      it 'builds an article title' do
        subhandler.on_start_element :'article-title'
        subhandler.on_text article_title
        subhandler.on_end_element :'article-title'
        expect(subhandler.builder.article_meta.article_title.to_s).to eq( article_title )
      end
    end
  end

  describe '== copyright year == ' do
    describe '#on_start_element' do
      it 'switches on text' do
        subhandler.on_start_element :'copyright-year'
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_end_element' do
      let(:copyright_year) { '1955' }
      it 'switches off text' do
        subhandler.on_start_element :'copyright-year'
        subhandler.on_end_element :'copyright-year'
        expect(subhandler.text?).to be_falsey
      end

      it 'builds a copyright year' do
        subhandler.on_start_element :'copyright-year'
        subhandler.on_text copyright_year
        subhandler.on_end_element :'copyright-year'
        expect(subhandler.builder.article_meta.copyright_year).to eq( copyright_year )
      end
    end
  end

  describe '== copyright holder == ' do
    describe '#on_start_element' do
      it 'switches on text' do
        subhandler.on_start_element :'copyright-holder'
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_end_element' do
      let(:copyright_holder) { 'A. Pain' }
      it 'switches off text' do
        subhandler.on_start_element :'copyright-holder'
        subhandler.on_end_element :'copyright-holder'
        expect(subhandler.text?).to be_falsey
      end

      it 'builds a copyright holder' do
        subhandler.on_start_element :'copyright-holder'
        subhandler.on_text copyright_holder
        subhandler.on_end_element :'copyright-holder'
        expect(subhandler.builder.article_meta.copyright_holder).to eq( copyright_holder )
      end
    end
  end

  describe '== conflict of interest ==' do

    it 'switches on attr' do
      subhandler.on_start_element :fn
      expect(subhandler.attr?).to be_truthy
    end

    it "on attribute value 'conflict' it sets state to :conflict" do
      subhandler.on_start_element :fn
      subhandler.on_attr(:'fn-type', 'conflict')
      expect(subhandler.state).to be :conflict
    end

    it 'switches off attr' do
      subhandler.on_start_element :fn
      subhandler.on_end_element :fn
      expect(subhandler.attr?).to be_falsey
    end

    it 'sets state to nil' do
      subhandler.on_start_element :fn
      subhandler.on_attr(:'fn-type', 'conflict')
      expect(subhandler.state).to be :conflict
      subhandler.on_end_element :fn
      expect(subhandler.state).to be_nil
    end

    it 'builds conflict' do
      subhandler.on_start_element :fn
      subhandler.on_attr(:'fn-type', 'conflict')
      subhandler.on_start_element :p
      subhandler.on_text 'This, that and the other'
      subhandler.on_end_element :p
      article_meta = subhandler.builder.article_meta
      expect(article_meta.conflict.class)
         .to eq(JPTSExtractor::ArticlePart::Text)
      expect(article_meta.conflict.fragments.first.text)
        .to eq 'This, that and the other'
    end
  end

  describe '== conceived ==' do

    it 'switches on attr' do
      subhandler.on_start_element :fn
      expect(subhandler.attr?).to be_truthy
    end

    it "on attribute value 'con' it sets state to :con" do
      subhandler.on_start_element :fn
      subhandler.on_attr(:'fn-type', 'con')
      expect(subhandler.state).to be :con
    end

    it 'switches off attr' do
      subhandler.on_start_element :fn
      subhandler.on_end_element :fn
      expect(subhandler.attr?).to be_falsey
    end

    it 'sets state to nil' do
      subhandler.on_start_element :fn
      subhandler.on_attr(:'fn-type', 'con')
      subhandler.on_end_element :fn
      expect(subhandler.state).to be_nil
    end

    it 'builds conflict' do
      subhandler.on_start_element :fn
      subhandler.on_attr(:'fn-type', 'con')
      subhandler.on_start_element :p
      subhandler.on_text 'This, that and the other'
      subhandler.on_end_element :p
      article_meta = subhandler.builder.article_meta
      expect(article_meta.conceived.class)
        .to eq(JPTSExtractor::ArticlePart::Text)
      expect(article_meta.conceived.fragments.first.text)
        .to eq 'This, that and the other'
    end
  end

  describe 'published date' do
    describe '#on_start_element' do
      it 'switches on attr' do
        subhandler.on_start_element :'pub-date'
        expect(subhandler.attr?).to be_truthy
      end
    end

    describe '#on_end_element' do
      it 'switched off attr' do
        subhandler.on_start_element :'pub-date'
        subhandler.on_attr :'pub-type', 'epub' 
        subhandler.on_start_element :day
        subhandler.on_text '21'
        subhandler.on_end_element :day
        subhandler.on_start_element :month
        subhandler.on_text '12'
        subhandler.on_end_element :month
        subhandler.on_start_element :year
        subhandler.on_text '2010'
        subhandler.on_end_element :year
        subhandler.on_end_element :'pub-date'
        expect(subhandler.attr?).to be_falsey
        expect(subhandler.text?).to be_falsey
        expect(subhandler.builder.article_meta.published_date).to eq(Date.new(2010, 12, 21))
      end
    end

    describe '#on_attr' do
      it 'switches on text' do
        subhandler.on_start_element :'pub-date'
        subhandler.on_attr :'pub-type', 'epub' 
        expect(subhandler.text?).to be_truthy
      end
    end
  end

end
