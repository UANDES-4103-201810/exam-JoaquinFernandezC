class Pizza < ApplicationRecord
  belongs_to :crust
  belongs_to :recipe
  has_and_belongs_to_many :orders
end
