require 'game'

describe Game do

  subject(:game) { described_class.new(chris, asad) }
  let(:chris)    { double(:chris) }
  let(:asad)     { double(:asad) }

  describe '#initialize' do
    it 'takes player 1 as an argument' do
      expect(game.player_1).to eq chris
    end

    it 'takes player 2 as an argument' do
      expect(game.player_2).to eq asad
    end
  end

  describe '#attack' do
    it 'lets a player attack another' do
      expect(chris).to receive(:receive_damage)
      game.attack(chris)
    end
  end

end
