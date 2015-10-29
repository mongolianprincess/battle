class Player
  attr_reader :name ,:hitpoints

  DEFAULT_HP = 100

  def initialize(name, hitpoints = DEFAULT_HP)
    @name = name
    @hitpoints = hitpoints
  end

  def attack(player)
   player.damage

  end

  def damage
    self.hitpoints -= 10
  end

  private

  attr_writer :hitpoints

end
