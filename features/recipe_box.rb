require_relative 'helper'

describe "creating a recipe" do
  before do
    @recipe_name = "flan"
    @out = capture_io{ RecipeBox::CLI.start %w{ new_recipe flan } }.join ''
  end

  it "creates a proper directory structure" do
    assert File.directory?(@recipe_name)
  end

  it "creates a new template file in markdown based on the recipe name" do
    assert File.exist?("#{@recipe_name}/#{@recipe_name}.markdown")
  end

  after do
    FileUtils.rm_rf(@recipe_name)
  end
end
