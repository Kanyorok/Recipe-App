class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.where(public: true).includes(recipe_foods: :food_name)
  end

  def show
    @recipe = Recipe.includes(:user, :foods).find(params[:id])
    @user = @recipe.user
    @foods = @recipe.foods
  end
end
