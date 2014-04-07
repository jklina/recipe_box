module RecipeBox
  class CLI < Thor
    desc "recipe_box NAME", "create a recipe called NAME"
    def insert(name)
      CreateRecipe.start([name])
    end

    desc "recipe_box NAME", "removes a recipe called NAME"
    def remove(name)
      if yes?("Warning: this will remove the directory #{name} and all its contents. Proceed?")
        RemoveRecipe.start([name])
      end
    end
  end
end
