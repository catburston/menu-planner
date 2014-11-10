class AddRecipeTypeAndCategoryToRecipes < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.string :type
      t.string :category
    end
  end
end
