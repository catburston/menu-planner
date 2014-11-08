class Ingredient < ActiveRecord::Base
  validates :title, presence: true
  validates :grocery_item, presence: true

  has_and_belongs_to_many :recipes
end
