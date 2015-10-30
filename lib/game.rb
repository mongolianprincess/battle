class Game

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def player_one_name
    @player_one.name
  end

  def player_two_name
    @player_two.name
  end

  def player_one_hitpoints
    @player_one.hitpoints
  end

  def player_two_hitpoints
    @player_two.hitpoints
  end

  def attack(player)
   player.damage
  end
end
