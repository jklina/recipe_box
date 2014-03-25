require_relative 'helper'

class TestRecipeBox < MiniTest::Unit::TestCase
  def test_new_returns_the_truth
    assert_equal true, RecipeBox.new
  end
end
