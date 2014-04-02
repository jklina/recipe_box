require_relative 'helper'

class TestRecipeBox < MiniTest::Unit::TestCase
  def test_new_creates_directory
    assert_equal true, RecipeBox.new("abba")
  end

  def test_sanitize_filename_replaces_spaces_w_underscores
    assert_equal "hello_test", RecipeBox.sanitize_filename("hello test")
  end
end
