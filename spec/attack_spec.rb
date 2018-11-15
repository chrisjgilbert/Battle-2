require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:chris)    { double(:chris, hit_points: 60) }
  let(:asad)     { double(:asad, hit_points: 60) }


  describe '#attack' do
    it 'lets a player attack another' do
      expect(chris).to receive(:receive_damage)
      game.attack(chris)
    end
  end

end
