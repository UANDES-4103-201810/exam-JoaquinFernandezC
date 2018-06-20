class Recipe < ApplicationRecord
  has_many :pizzas
  has_and_belongs_to_many :ingredients
end
