require 'player'

describe Player do

  subject(:player_1) { described_class.new("Chris") }
  subject(:player_2) { described_class.new("Asad") }

  it 'it retuns its name' do
    expect(player_1.name).to eq "Chris"
  end

  it 'has a default HP' do
    expect(player_1.hit_points).to eq Player::DEFAULT_HP
  end

  it 'can attack an opponent' do
    expect(player_1).to respond_to :attack
  end

  it 'reduces an opponents HP by 10' do
    expect { player_1.attack(player_2) }.to change{ player_2.hit_points }.by -10
  end
end
