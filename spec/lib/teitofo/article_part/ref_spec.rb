require 'teitofo/article_part/ref'
require 'teitofo/article_part/name'

RSpec.describe TeiToFo::ArticlePart::Ref do

  let(:ref) { TeiToFo::ArticlePart::Ref.new }

  describe '#publication_type' do
    it 'has a publication type of: journal' do
      ref.publication_type = 'journal'
    end

    it 'reads the publication type: other' do
      ref.publication_type = 'other'
      expect(ref.publication_type).to eq('other')
    end
  end

  describe '#source' do

    let(:source) { "Manson's Tropical Disease" }

    it 'has a source of: Manson\'s Tropical Disease' do
      ref.source = source
    end

    it 'reads the source' do
      ref.source = source
      expect(ref.source).to eq(source)
    end

    it 'hasn\'t got a source' do
      expect(ref.source?).to be_falsey
    end

    it 'has got a source' do
      ref.source = source
      expect(ref.source?).to be_truthy
    end
  end

  describe '#article_title' do

    let(:art_title) { 'Prevention of falls among the elderly.' }

    it 'has an article title of: Prevention of falls among the elderly.' do
      ref.article_title = art_title
    end

    it 'reads the article title' do
      ref.article_title = art_title
      expect(ref.article_title).to eq(art_title)
    end
     
    it 'hasn\'t got an article title' do
      expect(ref.article_title?).to be_falsey
    end

    it 'has got an article title' do
      ref.article_title = art_title
      expect(ref.article_title?).to be_truthy
    end
  end

  describe '#volume' do

    let(:vol) { '11' }

    it 'has an volume of: Prevention of falls among the elderly.' do
      ref.volume = vol
    end

    it 'reads the volume' do
      ref.volume = vol
      expect(ref.volume).to eq(vol)
    end
     
    it 'hasn\'t got an volume' do
      expect(ref.volume?).to be_falsey
    end

    it 'has got an volume' do
      ref.volume = vol
      expect(ref.volume?).to be_truthy
    end
  end

  describe '#year' do
    let(:yr) { '2525' }
    it 'reads the year' do
      ref.year = yr
      expect(ref.year).to eq(yr)
    end
     
    it 'hasn\'t got an year' do
      expect(ref.year?).to be_falsey
    end

    it 'has got an year' do
      ref.year = yr
      expect(ref.year?).to be_truthy
    end
  end

  describe '#month' do
    let(:mon) { '10' }
    it 'reads the month' do
      ref.month = mon
      expect(ref.month).to eq(mon)
    end
     
    it 'hasn\'t got an month' do
      expect(ref.month?).to be_falsey
    end

    it 'has got an month' do
      ref.month = mon
      expect(ref.month?).to be_truthy
    end
  end

  describe '#day' do
    let(:day) { '10' }
    it 'reads the day' do
      ref.day = day
      expect(ref.day).to eq(day)
    end
     
    it 'hasn\'t got an day' do
      expect(ref.day?).to be_falsey
    end

    it 'has got an day' do
      ref.day = day
      expect(ref.day?).to be_truthy
    end
  end

  describe '#fpage' do
    let(:fpage) { '55' }
    it 'reads the fpage' do
      ref.fpage = fpage
      expect(ref.fpage).to eq(fpage)
    end
     
    it 'hasn\'t got an fpage' do
      expect(ref.fpage?).to be_falsey
    end

    it 'has got an fpage' do
      ref.fpage = fpage
      expect(ref.fpage?).to be_truthy
    end
  end

  describe '#lpage' do
    let(:lpage) { '46' }
    it 'reads the lpage' do
      ref.lpage = lpage
      expect(ref.lpage).to eq(lpage)
    end
     
    it 'hasn\'t got an lpage' do
      expect(ref.lpage?).to be_falsey
    end

    it 'has got an lpage' do
      ref.lpage = lpage
      expect(ref.lpage?).to be_truthy
    end
  end

  describe '#editors' do
    let(:mr_smith) { TeiToFo::ArticlePart::Name.new('Smith', 'William') }
    it 'adds an editor name' do
      ref.add_editor_name(mr_smith)
    end
  end

  describe '#authors' do
  end

  describe '#to_s' do
    let(:pub_type) { 'journal' }
    let(:source) { 'Trop Med Int Health' }
    let(:art_title) { 'Circumstances and consequences of falls experienced by a community population 70 years and over during a prospective study.' }
    let(:vol) { '11' }
    let(:yr) { '1999' }
    let(:mon) { '7' }
    let(:day) { '23' }
    let(:lpage) { '17' }
    let(:fpage) { '8' }

    it 'returns a string representation of the ref' do
      ref.publication_type = pub_type
      ref.source = source
      ref.article_title = art_title
      ref.volume = vol
      ref.year = yr
      ref.month = mon
      ref.day = day
      ref.fpage = fpage
      ref.lpage = lpage

      expect(ref.to_s).to eq(
        "publication type: #{pub_type}\n" + 
        "source: #{source}\n" +
        "article_title: #{art_title}\n" +
        "volume: #{vol}\n" +
        "year: #{yr}\n" +
        "month: #{mon}\n" +
        "day: #{day}\n" +
        "fpage: #{fpage}\n" +
        "lpage: #{lpage}\n"
      )
    end
  end
end
