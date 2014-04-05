module RecipeBox
  class CLI < Thor
    include Thor::Actions

    def self.source_root
      File.dirname(__FILE__)
    end

    desc "recipe_box NAME", "create a recipe called NAME"
    def insert(name)
      puts source_paths.inspect
      empty_directory(name)
      template("../../templates/recipe.tt", "#{name}/#{name}.markdown")
    end
  end
end
