class RecipesController < ApplicationController
  before_action :move_to_signed_in, except: [:index, :show]
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end
  
  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    return unless @recipe.user_id != current_user.id
    redirect_to root_path
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
  def move_to_signed_in
    unless user_signed_in?
      redirect_to  '/users/sign_in'
    end
  end

  def recipe_params
    params.require(:recipe).permit(:image, :dish, :persons, :material, :amount, :make_one, :make_two, :make_three, :make_four, :make_five).merge(user_id: current_user.id)
  end

end
