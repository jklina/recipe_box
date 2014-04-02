require_relative 'helper'

describe "creating a recipe" do
  it "creates a proper directory structure" do
    FakeFS do
      out = capture_io{ RecipeBox.start %w{ new_recipe flan } }.join ''
      assert File.directory?("flan")
    end
  end
end
