require_relative "recipe_box/version"

module RecipeBox
  # Your code goes here...
  def self.new(name)
     name = sanitize_filename(name)
     Dir.mkdir(name)
  end

  def self.sanitize_filename(name)
    name.gsub /[^a-z0-9\-]+/i, '_'
  end

end
