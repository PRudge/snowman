require("minitest/autorun")
require("minitest/rg")

require_relative("../player")
require_relative("../hidden_obj")
require_relative("../game")

class GameTest < MiniTest::Test

  def setup
    @player_1 = Player.new("Kira", 6)
    @player_2 = Player.new("Pauline", 0)
    @hidden_word = HiddenObj.new("hello")

    @game_1 = Game.new(@player_1,@hidden_word)
    @game_2 = Game.new(@player_2,@hidden_word)

  end

  def test_player_can_play__true
    result = @game_1.can_play()
    assert_equal(true, result)
  end

  def test_player_can_play__false
    result = @game_2.can_play()
    assert_equal(false, result)
  end

  def test_player_can_play_remove_player
    assert_equal(5, @game_1.take_player_off)
  end

  def test_create_array
    assert_equal(["a"], @game_2.create_array("a"))
    assert_equal(["a","b"], @game_2.create_array("b"))
  end

  def test_letters
    assert_equal(true, @game_1.check_letter_exists("h"))
  end

  def test_add_letter__true
    word = @game_1.replace_letter("h")
    assert_equal("h****", word)
    word = @game_1.replace_letter("l")
    assert_equal("h*ll*", word)
  end

  def test_add_letter__false
    word = @game_1.replace_letter("k")
    assert_equal("*****", word)
  end
  
  def test_unique_new_letter__true
    assert_equal(["a"], @game_2.create_array("a"))
    assert_equal(["a","b"], @game_2.create_array("b"))
    result = @game_2.check_its_a_new_letter("a")
    assert_equal(true, result)
  end

  def test_unique_new_letter__false
    assert_equal(["a"], @game_2.create_array("a"))
    assert_equal(["a","b"], @game_2.create_array("b"))
    result = @game_2.check_its_a_new_letter("c")
    assert_equal(false, result)
  end

  def test_is_won__false
    result = @game_1.is_won
    assert_equal(false, result)
  end

  def test_is_won__true
    word = @game_1.replace_letter("h")
    word = @game_1.replace_letter("l")
    word = @game_1.replace_letter("e")
    word = @game_1.replace_letter("o")
    p word
    result = @game_1.is_won
    assert_equal(true, result)
  end

end
