class IngredientsController < ApplicationController
  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def index
    @ingredient = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
    @ingredient.ingredients.build
  end

  def create
    ingredient = Ingredient.create(ingredient_params)
     redirect_to ingredient_path
  end

  def update
   ingredient = Ingredient.find(params[:id])
   ingredient.update(ingredient_params)
   redirect_to ingredient_path
  end

  private

  def ingredient_params
   params.require(:ingredient).permit(:recipe_name, :name, :quantity)
  end
end
