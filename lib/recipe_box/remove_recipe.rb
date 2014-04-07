module RecipeBox
  class RemoveRecipe < Thor::Group
    include Thor::Actions

    argument :name

    def self.source_root
      File.dirname(__FILE__)
    end

    def remove_directory
      remove_dir(name)
    end
  end
end
