require 'game'

describe Game do

  subject(:game) { described_class.new(chris, asad) }
  let(:chris)    { double(:chris) }
  let(:asad)     { double(:asad) }

  describe '#player 1' do
    it 'takes player 1 as an argument' do
      expect(game.player_1).to eq chris
    end
  end

  describe '#player 2' do
    it 'takes player 2 as an argument' do
      expect(game.player_2).to eq asad
    end
  end

  describe 'players' do
    it 'contains the players' do
      expect(game.players).to eq [chris, asad]
    end
  end

  describe '#attack' do
    it 'lets a player attack another' do
      expect(chris).to receive(:receive_damage)
      game.attack(chris)
    end
  end

  describe '#current_player' do
    it 'selecs the current player' do
      expect(game.current_player).to eq chris
    end
  end

  describe '#turn' do
    it 'switches the players turns' do
      game.turn
      expect(game.current_player).to eq asad
    end
  end

end
