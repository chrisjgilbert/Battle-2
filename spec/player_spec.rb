require 'player'

describe Player do

  subject(:chris) { described_class.new("Chris") }
  subject(:asad) { described_class.new("Asad") }

  describe '#name' do
    it 'it retuns its name' do
      expect(chris.name).to eq "Chris"
    end
  end

  describe '#hit_points' do
    it 'has a default HP' do
      expect(chris.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'attacks an opponent' do
      expect(asad).to receive(:receive_damage)
      chris.attack(asad)
    end
  end

  describe '#receive_damage' do
    it 'reduces a players hit points by 10' do
      expect { chris.receive_damage }.to change{ chris.hit_points }.by -10
    end
  end

end
