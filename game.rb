class Game

  attr_reader :guess_array

  def initialize(player, hidden_obj)
    @player = player
    @hidden_obj = hidden_obj
    @guess_array = []

  end

  def can_play()
    if @player.num_lives > 0
      return true
    else
      return false
    end
  end

  def take_player_off()
    @player.delete_player_life()
  end

  def create_array(guess_letter)
    @guess_array << guess_letter
  end

  def check_its_a_new_letter(guess_letter)
    for letter in @guess_array
      if letter == guess_letter
        return true
      end
    end
    return false
  end

  def check_letter_exists(guess_letter)
    return @hidden_obj.check_letter(guess_letter)
  end


  def replace_letter(guess_letter)
    if @hidden_obj.check_letter(guess_letter) == true
      #holder
    end
    return @hidden_obj.add_letter(guess_letter)
  end

  def is_won
      @hidden_obj.have_won
  end

end
#
