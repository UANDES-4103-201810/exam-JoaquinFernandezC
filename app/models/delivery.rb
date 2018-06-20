class Delivery < ApplicationRecord

  validates :phone, presence: true, numericality: true
  validates :address_1, presence: true
  validates :address_2, presence: true
end
