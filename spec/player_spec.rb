require 'player'

describe Player do
  it 'it retuns its name' do
    player_1 = Player.new("Chris")
    expect(player_1.name).to eq "Chris"
  end
end
