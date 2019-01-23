require("minitest/autorun")
require("minitest/rg")

require_relative("../player")


class PlayerTest < MiniTest::Test

  def setup
    @player = Player.new("Pauline", 3)
  end

  def test_player_name
    assert_equal("Pauline", @player.name)
  end

  def test_player_name
    assert_equal(3, @player.num_lives)
  end

  def test_player_lives
    @player.delete_player_life()
    assert_equal(2, @player.num_lives)
  end

end
