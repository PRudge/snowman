require("minitest/autorun")
require("minitest/rg")

require_relative("../hidden_obj")

class HiddenObjTest < MiniTest::Test

  def setup
    hidden_word = "hello"
    @hiddenobj_2 = HiddenObj.new(hidden_word)
    @hiddenobj_1 = HiddenObj.new(hidden_word)
  end

  def test_hidden_name
    assert_equal("hello", @hiddenobj_2.hidden_word)
  end

  def test_check_letter__true
    result = @hiddenobj_2.check_letter("o")
    assert_equal(true, result )
  end

  def test_check_letter__false
    result = @hiddenobj_2.check_letter("k")
    assert_equal(false, result )
  end

   def test_add_letter
     result = @hiddenobj_2.add_letter("h")
     # result = @hiddenobj_2.add_letter("o")
     assert_equal("h****", result)
   end

   def test_have_won__false
     result = @hiddenobj_2.have_won
     assert_equal(false, result)
   end

   def test_have_won__true
    result = @hiddenobj_2.add_letter("l")
    result = @hiddenobj_2.add_letter("o")
    result = @hiddenobj_2.add_letter("h")
    result = @hiddenobj_2.add_letter("e")
    p @hiddenobj_2.word
    result = @hiddenobj_2.have_won
    assert_equal(true, result)
   end





end
