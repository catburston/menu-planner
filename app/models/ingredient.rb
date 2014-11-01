class Ingredient < ActiveRecord::Base
  validates :title, presence: true
  validates :grocery_item, presence: true
end
