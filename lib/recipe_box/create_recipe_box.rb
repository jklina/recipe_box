module RecipeBox
  class CreateRecipeBox < Thor::Group
    include Thor::Actions

    argument :name

    def self.source_root
      File.dirname(__FILE__)
    end

    def create_directory
      empty_directory(name)
    end
  end
end
