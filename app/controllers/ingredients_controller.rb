class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy
  ]
  def show
  end

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
    @recipes = Recipe.all
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to @ingredient
    else
      render 'new'
    end
  end

  def edit
    @recipes = Recipe.all
  end

  def update
    if @ingredient.update(ingredient_params)
      redirect_to @ingredient
    else
      render 'edit'
    end
  end

  def destroy
    @ingredient.destroy
    redirect_to ingredients_path
  end

  private
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end
    def ingredient_params
      params.require(:ingredient).permit(:title, :grocery_item)
    end
end
