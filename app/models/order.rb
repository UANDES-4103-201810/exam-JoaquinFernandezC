class Order < ApplicationRecord
  has_and_belongs_to_many :pizzas

  validates :payment, presence: true
  validates :pizzas, presence: true
end
