require 'thor'

require_relative "recipe_box/version"
require_relative "recipe_box/create_recipe"
require_relative "recipe_box/remove_recipe"
require_relative "recipe_box/cli"

module RecipeBox
  # # Your code goes here...
  # def self.new(name)
  #    name = sanitize_filename(name)
  #    Dir.mkdir(name)
  # end

  # def self.sanitize_filename(name)
  #   name.gsub /[^a-z0-9\-]+/i, '_'
  # end

end
