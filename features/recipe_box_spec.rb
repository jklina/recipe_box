require_relative 'helper'

describe "creating a recipe box" do
  it "creates a proper directory structure" do
    name = "cool_recipes"
    out = capture_io{ RecipeBox::CLI.start %w{ new cool_recipes } }.join ''
    assert File.directory?(name)
  end
end

describe "creating a recipe" do
  before do
    @recipe_name = "flan"
    @out = capture_io{ RecipeBox::CLI.start %w{ insert flan } }.join ''
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

describe "removing a recipe" do
  before do
    @recipe_name = "flan"
    Thor::Shell::Basic.any_instance.expects(:yes?).with("Warning: this will remove the directory #{@recipe_name} and all its contents. Proceed?").returns(true)
  end

  it "gives a warning that its about to delete the receipe dir and contents" do
    capture_io { RecipeBox::CLI.start %w{ remove flan } }
  end

  it "removes the recipe's directory" do
    FileUtils.mkdir(@recipe_name)
    FileUtils.touch("#{@recipe_name}/#{@recipe_name}.markdown")
    assert File.directory?(@recipe_name)
    capture_io { RecipeBox::CLI.start %w{ remove flan } }
    refute File.directory?(@recipe_name)
  end

  after do
    FileUtils.rm_rf(@recipe_name)
  end
end
