module RecipeBox
  class CLI < Thor
    include Thor::Actions

    desc "recipe_box NAME", "create a recipe called NAME"
    def insert(name)
      CreateRecipe.start([name])
    end
  end
end
