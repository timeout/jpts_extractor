require 'teitofo/article_part/name'

RSpec.describe TeiToFo::ArticlePart::Name do

  let(:name) { TeiToFo::ArticlePart::Name.new('Cook', 'GC') }

  describe '#initialize' do
    it 'constructs a Name with a surname and given names' do
      name
    end
  end

  describe '#surname' do
    it 'sets the surname to Black' do
      name.surname = 'Black'
      expect(name.surname).to eq('Black')
    end
  end

  describe '#given_names' do
    it 'sets the given names to Matthew John' do
      name.given_names = 'Matthew John'
      expect(name.given_names).to eq('Matthew John')
    end
  end

  describe '#to_s' do
    it 'creates a string representation of a name' do
      expect(name.to_s).to eq('GC Cook')
    end
  end
end
