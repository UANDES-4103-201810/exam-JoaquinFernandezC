class Order < ApplicationRecord
  has_and_belongs_to_many :pizzas
  before_save :update_subtotal

  validates :payment, presence: true
  validates :pizzas, presence: true

  def subtotal
    pizzas.collect{ |oi| oi.valid? ? (oi.price): 0}.sum
  end
  def update_subtotal
    self[:subtotal] = subtotal
  end
end
