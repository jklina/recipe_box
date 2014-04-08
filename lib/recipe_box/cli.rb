module RecipeBox
  class CLI < Thor
    desc "recipe_box insert NAME", "create a recipe called NAME"
    def insert(name)
      CreateRecipe.start([name])
    end

    desc "recipe_box remove NAME", "removes a recipe called NAME"
    def remove(name)
      if yes?("Warning: this will remove the directory #{name} and all its contents. Proceed?")
        RemoveRecipe.start([name])
      end
    end

    desc "recipe_box new NAME", "creates a directory to hold the recipes"
    def new(name)
      CreateRecipeBox.start([name])
    end
  end
end
