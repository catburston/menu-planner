class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.string :recipe

      t.timestamps
    end
  end
end
