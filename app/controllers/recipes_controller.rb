class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    params[:sort_params] = %w{category recipe_type chef}.include?(params[:sort_params]) ? params[:sort_params] : 'title'
    @recipes = Recipe.all.order "#{params[:sort_params]} ASC"
  end

  def new
    @recipe = Recipe.new
    # @menus = Menu.all
    @ingredients = Ingredient.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def edit
    # @menus = Menu.all
    @ingredients = Ingredient.all
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
    def recipe_params
      params.require(:recipe).permit(:title, :category, :recipe_type, :chef, :ingredient_ids => [])
    end
    def sort_params
      params.permit(:category, :recipe_type, :chef, :title)
    end
    def recipe_arrays
    end
end
