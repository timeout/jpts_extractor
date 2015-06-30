require 'teitofo/builder/ref_builder'

RSpec.describe TeiToFo::Builder::RefBuilder do

  let(:builder) { TeiToFo::Builder::RefBuilder.new }

  describe '#initialize' do
    it 'creates a TeiToFo::ArticlePart::Ref' do
      expect(builder.ref.class).to be(TeiToFo::ArticlePart::Ref)
    end
  end

      # attr_accessor :publication_type, :source, :article_title, :volume,
      #   :year, :month, :day, :fpage, :lpage

  describe 'delegate to ref' do

    let(:pub_type) { 'journal' }
    let(:source) { 'Trop Med Int Health' }
    let(:art_title) { 'Circumstances and consequences of falls experienced by a community population 70 years and over during a prospective study.' }
    let(:vol) { '11' }
    let(:yr) { '1999' }
    let(:mon) { '7' }
    let(:day) { '23' }
    let(:lpage) { '17' }
    let(:fpage) { '8' }


    describe '#publication=' do
      it 'builds a journal' do
        builder.publication_type = pub_type
        expect(builder.ref.publication_type).to eq(pub_type)
      end
    end

    describe '#source=' do
      it 'builds a source' do
        builder.source = source
        expect(builder.ref.source).to eq(source)
      end
    end

    describe '#article_title' do
      it 'builds an article title' do
        builder.article_title = art_title
        expect(builder.ref.article_title).to eq(art_title)
      end
    end

    describe '#volume=' do
      it 'builds a volume' do
        builder.volume = vol
        expect(builder.ref.volume).to eq(vol)
      end
    end

    describe '#year=' do
      it 'builds a year' do
        builder.year = yr
        expect(builder.ref.year).to eq(yr)
      end
    end

    describe '#month=' do
      it 'builds a month' do
        builder.month = mon
        expect(builder.ref.month).to eq(mon)
      end
    end

    describe '#day=' do
      it 'builds a day' do
        builder.day = day
        expect(builder.ref.day).to eq(day)
      end
    end

    describe '#fpage=' do
      it 'builds a fpage' do
        builder.fpage = fpage
        expect(builder.ref.fpage).to eq(fpage)
      end
    end

    describe '#lpage=' do
      it 'builds a lpage' do
        builder.lpage = lpage
        expect(builder.ref.lpage).to eq(lpage)
      end
    end

  end
end
