class CreateRecipesIngredients < ActiveRecord::Migration
  def change
    create_table :recipes_ingredients, id: false do |t|
      t.belongs_to :ingredient
      t.belongs_to :recipe
    end
  end
end
