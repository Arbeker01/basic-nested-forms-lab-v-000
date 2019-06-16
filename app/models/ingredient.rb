class Ingredient < ActiveRecord::Base

belongs_to :recipe
  def recipe_name=(name)
  self.recipe = Recipe.find_or_create_by(name: name)
  end

  def recipe_name
  self.recipe ? self.recipe.name : nil
  end
end
