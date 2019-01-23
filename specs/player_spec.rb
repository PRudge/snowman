require("minitest/autorun")
require("minitest/rg")

require_relative("../player")


class PlayerTest < MiniTest::Test

  def setup
    @player = Player.new("Pauline")
  end

  def test_player_name
    assert_equal("Pauline", @player.name)
  end

  def test_player_lives
    assert_equal(6, @player.num_lives)
  end

  def test_player_lives
    @player.delete_player_life()
    assert_equal(5, @player.num_lives)
  end

end
