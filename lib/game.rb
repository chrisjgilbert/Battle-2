class Game

  attr_reader :player_1, :player_2, :players

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1, player_2]
  end

  def attack(player)
    player.receive_damage
  end

  def current_player
    @players.first
  end

end
