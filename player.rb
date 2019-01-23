class Player
  attr_reader :name, :num_lives

  def initialize(name, num_lives)
    @name = name
    @num_lives = num_lives
  end

  def delete_player_life()
    @num_lives -= 1
  end


end
