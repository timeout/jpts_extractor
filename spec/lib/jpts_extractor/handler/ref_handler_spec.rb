require 'jpts_extractor/handler/ref_handler'

RSpec.describe JPTSExtractor::Handler::RefHandler do

  let(:subhandler) { JPTSExtractor::Handler::RefHandler.new }

  describe '#initialize' do
    it 'creates a builder' do
      expect(subhandler.builder).not_to be_nil
    end

    it 'creates an ArticleMetaBuilder' do
      expect(subhandler.builder.class).to be(JPTSExtractor::Builder::RefBuilder)
    end
  end

  describe '== publication type ==' do
    describe '#on_start_element' do
      it 'switches on attr' do
        subhandler.on_start_element :'element-citation'
        expect(subhandler.attr?).to be_truthy
      end

      it 'switches on attr' do
        subhandler.on_start_element :'mixed-citation'
        expect(subhandler.attr?).to be_truthy
      end
    end

    describe '#on_attr' do
       it 'builds a publication type of "other"' do
         subhandler.on_start_element :'element-citation'
         subhandler.on_attr(:'publication-type', 'other')
         expect(subhandler.builder.ref.publication_type).to eq 'other'
       end

       it 'builds a publication type of "other"' do
         subhandler.on_start_element :'mixed-citation'
         subhandler.on_attr(:'publication-type', 'other')
         expect(subhandler.builder.ref.publication_type).to eq 'other'
       end
    end

    describe '#on_end_element' do
      it 'turns off attr' do
        subhandler.on_start_element :'element-citation'
        subhandler.on_end_element :'element-citation'
        expect(subhandler.attr?).to be_falsey
      end

      it 'turns off attr' do
        subhandler.on_start_element :'mixed-citation'
        subhandler.on_end_element :'mixed-citation'
        expect(subhandler.attr?).to be_falsey
      end
    end
  end

  describe '== source == ' do
    describe '#on_start_element' do
      it 'switches on text' do
        subhandler.on_start_element :source
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_text' do
      it 'gets the source text' do
        subhandler.on_start_element :source
        subhandler.on_text('PLoS Medicine')
        expect(subhandler.instance_variable_get(:@text)).to eq 'PLoS Medicine'
      end
    end

    describe '#on_end_element' do
      it 'builds the source' do
        subhandler.on_start_element :source
        subhandler.on_text('PLoS Medicine')
        subhandler.on_end_element :source
        expect(subhandler.builder.ref.source).to eq 'PLoS Medicine'
      end
    end
  end

  describe '== article_title == ' do
    describe '#on_start_element' do
      it 'turns on text' do
        subhandler.on_start_element :'article-title'
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_text' do
      it 'gets the source text' do
        subhandler.on_start_element :'article-title'
        subhandler.on_text('Human African Trypanosomiasis')
        expect(subhandler.instance_variable_get(:@text)).to eq 'Human African Trypanosomiasis'
      end
    end

    describe '#on_end_element' do
      it 'builds an article title' do
        subhandler.on_start_element :'article-title'
        subhandler.on_text('Human African Trypanosomiasis')
        subhandler.on_end_element :'article-title'
        expect(subhandler.builder.ref.article_title).to eq 'Human African Trypanosomiasis'
      end
    end
  end

  describe '== volume == ' do
    describe '#on_start_element' do
      it 'turns on text' do
        subhandler.on_start_element :volume
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_text' do
      it 'gets the volume text' do
        subhandler.on_start_element :volume
        subhandler.on_text('5')
        expect(subhandler.instance_variable_get(:@text)).to eq '5'
      end
    end

    describe '#on_end_element' do
      it 'builds a volume' do
        subhandler.on_start_element :volume
        subhandler.on_text('5')
        subhandler.on_end_element :volume
        expect(subhandler.builder.ref.volume).to eq '5'
      end
    end
  end

  describe '== year == ' do
    describe '#on_start_element' do
      it 'turns on text' do
        subhandler.on_start_element :year
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_text' do
      it 'gets the year text' do
        subhandler.on_start_element :year
        subhandler.on_text('1995')
        expect(subhandler.instance_variable_get(:@text)).to eq '1995'
      end
    end

    describe '#on_end_element' do
      it 'builds a year' do
        subhandler.on_start_element :year
        subhandler.on_text('1995')
        subhandler.on_end_element :year
        expect(subhandler.builder.ref.year).to eq '1995'
      end
    end

  end

  describe '== month == ' do
    describe '#on_start_element' do
      it 'turns on text' do
        subhandler.on_start_element :month
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_text' do
      it 'gets the month text' do
        subhandler.on_start_element :month
        subhandler.on_text('10')
        expect(subhandler.instance_variable_get(:@text)).to eq '10'
      end
    end

    describe '#on_end_element' do
      it 'builds a month' do
        subhandler.on_start_element :month
        subhandler.on_text('10')
        subhandler.on_end_element :month
        expect(subhandler.builder.ref.month).to eq '10'
      end
    end
  end

  describe '== day == ' do
    describe '#on_start_element' do
      it 'turns on text' do
        subhandler.on_start_element :day
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_text' do
      it 'gets the day text' do
        subhandler.on_start_element :day
        subhandler.on_text('10')
        expect(subhandler.instance_variable_get(:@text)).to eq '10'
      end
    end

    describe '#on_end_element' do
      it 'builds a day' do
        subhandler.on_start_element :day
        subhandler.on_text('10')
        subhandler.on_end_element :day
        expect(subhandler.builder.ref.day).to eq '10'
      end
    end
  end

  describe '== fpage == ' do
    describe '#on_start_element' do
      it 'turns on text' do
        subhandler.on_start_element :fpage
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_text' do
      it 'gets the fpage text' do
        subhandler.on_start_element :fpage
        subhandler.on_text('10')
        expect(subhandler.instance_variable_get(:@text)).to eq '10'
      end
    end

    describe '#on_end_element' do
      it 'builds a fpage' do
        subhandler.on_start_element :fpage
        subhandler.on_text('10')
        subhandler.on_end_element :fpage
        expect(subhandler.builder.ref.fpage).to eq '10'
      end
    end
  end

  describe '== lpage == ' do
    describe '#on_start_element' do
      it 'turns on text' do
        subhandler.on_start_element :lpage
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_text' do
      it 'gets the lpage text' do
        subhandler.on_start_element :lpage
        subhandler.on_text('10')
        expect(subhandler.instance_variable_get(:@text)).to eq '10'
      end
    end

    describe '#on_end_element' do
      it 'builds a lpage' do
        subhandler.on_start_element :lpage
        subhandler.on_text('10')
        subhandler.on_end_element :lpage
        expect(subhandler.builder.ref.lpage).to eq '10'
      end
    end
  end

  describe '== editor name ==' do
    describe '#on_start_name' do
      it 'switchs attr on' do
        subhandler.on_start_element(:'person-group')
        expect(subhandler.attr?).to be_truthy
      end

      it 'instantiates a new name attribute' do
        subhandler.on_start_element(:'person-group')
        subhandler.on_attr(:'person-group-type', 'editor')
        subhandler.on_start_element(:name)
        expect(subhandler.name).not_to be_nil
      end

      it 'swichts on text' do
        subhandler.on_start_element(:surname)
        expect(subhandler.text?).to be_truthy
      end

      it 'swichts on text' do
        subhandler.on_start_element(:'given-names')
        expect(subhandler.text?).to be_truthy
      end
    end

    describe '#on_attr' do
      it 'sets the name_type' do
        subhandler.on_start_element(:'person-group')
        subhandler.on_attr(:'person-group-type', 'editor')
        expect(subhandler.name_type).to eq('editor')
      end
    end

    describe '#on_end_element' do
      it 'adds the surname to the name attribute' do
        subhandler.on_start_element(:'person-group')
        subhandler.on_attr(:'person-group-type', 'editor')
        subhandler.on_start_element(:name)
        subhandler.on_start_element(:surname)
        subhandler.on_text('Smith')
        subhandler.on_end_element(:surname)
        expect(subhandler.name.name.surname).to eq('Smith')
      end

      it 'adds the given names to the name attribute' do
        subhandler.on_start_element(:'person-group')
        subhandler.on_attr(:'person-group-type', 'editor')
        subhandler.on_start_element(:name)
        subhandler.on_start_element(:'given-names')
        subhandler.on_text('William Charles')
        subhandler.on_end_element(:'given-names')
        expect(subhandler.name.name.given_names).to eq('William Charles')
      end

      it 'adds builds an editor' do
        subhandler.on_start_element(:'person-group')
        subhandler.on_attr(:'person-group-type', 'editor')
        subhandler.on_start_element(:name)
        subhandler.on_start_element(:'given-names')
        subhandler.on_text('William Charles')
        subhandler.on_end_element(:'given-names')
        subhandler.on_end_element(:name)
        expect(subhandler.builder.ref.editor_names.first.given_names).to eq('William Charles')
      end
    end
  end
end
