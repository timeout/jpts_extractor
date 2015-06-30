require 'teitofo/handler/article_meta_handler'

RSpec.describe TeiToFo::Handler::ArticleMetaHandler do

  let (:subhandler) { TeiToFo::Handler::ArticleMetaHandler.new }

  describe '#initialize' do
    it 'creates a builder' do
      expect(subhandler.builder).not_to be_nil
    end

    it 'creates an ArticleMetaBuilder' do
      expect(subhandler.builder.class).to be(TeiToFo::Builder::ArticleMetaBuilder)
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

        expect(subhandler.builder.article_meta.subject).to eq( subject.upcase )
      end
    end
  end

  describe '== article title ==' do
    describe '#on_start_element' do
      it 'switches on text' do
        subhandler.on_start_element :'article-title'
        expect(subhandler.text?).to be_truthy
      end
    end

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
        expect(subhandler.builder.article_meta.article_title).to eq( article_title.capitalize )
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

    let(:conflict) { 'There is no conflict of interest, but I really needed the money' }

    describe '#on_start_element' do
      it 'switches on attr' do
        subhandler.on_start_element :fn
        expect(subhandler.attr?).to be_truthy
      end

      it 'delegates to the text_block handler' do
        subhandler.on_start_element :fn
        subhandler.on_attr(:'fn-type', 'conflict')
        subhandler.on_text conflict
        subhandler.on_end_element :p
        expect(subhandler.builder.article_meta.conflict.class).to eq(TeiToFo::ArticlePart::TextBlock)
        expect(subhandler.builder.article_meta.conflict.to_s).to eq( conflict )
      end
    end

    describe '#on_end_element' do
      it 'switches off attr' do
        subhandler.on_start_element :fn
        subhandler.on_end_element :fn
        expect(subhandler.attr?).to be_falsey
      end
    end

    describe '#on_attr' do
      it 'creates a new text_handler' do
        subhandler.on_start_element :fn
        subhandler.on_attr(:'fn-type', 'conflict')
        expect(subhandler.text_handler.name).to eq(:conflict)
        expect(subhandler.text_handler.text_block_handler).not_to be_nil
      end
    end
  end

  describe '== conceived ==' do

    let(:conceived) { 'This experiment was conceived by my mum. Good on ya mum!' }

    describe '#on_start_element' do
      it 'switches on attr' do
        subhandler.on_start_element :fn
        expect(subhandler.attr?).to be_truthy
      end

      it 'delegates to the text_block handler' do
        subhandler.on_start_element :fn
        subhandler.on_attr(:'fn-type', 'con')
        subhandler.on_text conceived
        subhandler.on_end_element :p
        expect(subhandler.builder.article_meta.conceived.class).to eq(TeiToFo::ArticlePart::TextBlock)
        expect(subhandler.builder.article_meta.conceived.to_s).to eq( conceived )
      end
    end

    describe '#on_end_element' do
      it 'switches off attr' do
        subhandler.on_start_element :fn
        subhandler.on_end_element :fn
        expect(subhandler.attr?).to be_falsey
      end
    end

    describe '#on_attr' do
      it 'creates a new text_handler' do
        subhandler.on_start_element :fn
        subhandler.on_attr(:'fn-type', 'con')
        expect(subhandler.text_handler.name).to eq(:conceived)
        expect(subhandler.text_handler.text_block_handler).not_to be_nil
      end
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
