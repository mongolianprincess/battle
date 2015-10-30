class Game

  attr_reader :player_one, :player_two, :current_player

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_player = player_one
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

  def switch_player
    current_player == player_one ? self.current_player = player_two : self.current_player = player_one
  end

  def other_player
    return player_one if current_player == player_two
    player_two
  end

  private

  # attr_writer :current_player

  def current_player= player
    @current_player = player
  end


end
