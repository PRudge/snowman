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

end
