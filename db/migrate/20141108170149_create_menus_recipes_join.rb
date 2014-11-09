class CreateMenusRecipesJoin < ActiveRecord::Migration
  def change
    create_table :menus_recipes, id: false do |t|
      t.belongs_to :menu
      t.belongs_to :recipe
    end
  end
end
