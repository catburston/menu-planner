class Recipe < ActiveRecord::Base
  validates :title, presence: true
  validates :recipe_type, presence: true
  validates :category, presence: true

  has_and_belongs_to_many :menus
  has_and_belongs_to_many :ingredients
end
