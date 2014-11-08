class Recipe < ActiveRecord::Base
  validates :title, presence: true
  # validates :ingredient, presence: true

  has_and_belongs_to_many :ingredients
end
