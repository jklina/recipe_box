module RecipeBox
  class CreateRecipe < Thor::Group
    include Thor::Actions

    argument :name

    def self.source_root
      File.dirname(__FILE__)
    end

    def create_directory
      empty_directory(name)
    end

    def create_recipe
      template("../../templates/recipe.tt", "#{name}/#{name}.markdown")
    end
  end
end
