class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :title
      t.string :grocery_item

      t.timestamps
    end
  end
end
