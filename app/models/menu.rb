class Menu < ActiveRecord::Base
  validates :title, presence: true
  # validates :recipe, presence: true

  has_and_belongs_to_many :recipes
  has_many :ingredients, through: :recipes
end
