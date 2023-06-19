class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end
  
  def create
    @recipe = Recipe.create(recipe_params)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
  end

  private
  
  def recipe_params
    params.require(:recipe).permit(:image, :dish, :persons, :material, :amount, :make_one, :make_two, :make_three, :make_four, :make_five).merge(user_id: current_user.id)
  end

end
