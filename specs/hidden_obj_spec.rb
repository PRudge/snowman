require("minitest/autorun")
require("minitest/rg")

require_relative("../hidden_obj")

class HiddenObjTest < MiniTest::Test

  def setup
    hidden_word = "hello"
    @hidden_obj = HiddenObj.new(hidden_word)
  end

  def test_hidden_name
    assert_equal("hello", @hidden_obj.hidden_word)
  end

  def test_check_letter__true
    result = @hidden_obj.check_letter("o")
    assert_equal(true, result )
  end

  def test_check_letter__false
    result = @hidden_obj.check_letter("k")
    assert_equal(false, result )
  end

   def test_add_letter
     result = @hidden_obj.add_letter("h")
     assert_equal("h****", result)
     result = @hidden_obj.add_letter("e")
     assert_equal("he***", result)
   end

   def test_have_won__true
    result = @hidden_obj.add_letter("l")
    result = @hidden_obj.add_letter("o")
    result = @hidden_obj.add_letter("h")
    result = @hidden_obj.add_letter("e")
    result = @hidden_obj.have_won
    assert_equal(true, result)
   end

   def test_have_won__false
     result = @hidden_obj.have_won
     assert_equal(false, result)
   end

end
