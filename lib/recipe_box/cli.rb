module RecipeBox
  class CLI < Thor
    include Thor::Actions

    desc "recipe_box NAME", "create a recipe called NAME"
    def new_recipe(name)
      puts "Recipe created!"
      empty_directory(name)
    end
  end
end
