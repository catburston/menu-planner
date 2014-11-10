class AddChefToRecipes < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.string :chef
    end
  end
end
