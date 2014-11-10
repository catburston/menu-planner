class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def show
    ingredients = @menu.ingredients
    @shopping_list = ingredients.group("ingredients.title").count
  end

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
    @recipes = Recipe.all
    @date = Date.commercial(Date.today.year, 1+Date.today.cweek, 1).strftime("%d %b, %Y")
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to @menu
    else
      render 'new'
    end
  end

  def edit
    @recipes = Recipe.all
  end

  def update
    if @menu.update(menu_params)
      redirect_to @menu
    else
      render 'edit'
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to menus_path
  end

  def shopping_list
  end

  private
    def set_menu
      @menu = Menu.find(params[:id])
    end
    def menu_params
      params.require(:menu).permit(:title, :recipe_ids => [])
    end
end
