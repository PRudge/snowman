class Player
  attr_reader :name, :num_lives

  def initialize(name)
    @name = name
    @num_lives = 6
  end

  def delete_player_life()
    @num_lives -= 1
  end


end
