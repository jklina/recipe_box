# RecipeBox

This is basically a couple of file generators thrown together to enforce a specific format for storing recipes. 

## Installation

    $ gem install recipe_box

## Usage

You begin by creating a directory to store your reipes, or just type:

`recipe_box new my_recipe_box`

Once you have a dedicated directory for your recipes jump inside of it and try creating a new recipe:

`cd my_recipe_box`
`recipe_box insert roast_chicken`

This will create a new directory with a basic markdown template you can use. At this point, use your favorite editor to edit the file. Since each recipe has its own directory you can add images or even multiple files, or keep it as simple as a single markdown file.

If you want to remove a recipe you can manually delete the directory or type:

`recipe_box remove roast_chicken`

This will delete the directory and the files inside the directory of the given recipe.

Since all the content is nothing but directories and markdown, you can use Git to keep track of all your changes and even save your recipes to a remote repository! A nice side effect is that you'll be able to track all the changes and modifications you make to your recipes. 

## Contributing

1. Fork it ( http://github.com/<my-github-username>/recipe_box/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
