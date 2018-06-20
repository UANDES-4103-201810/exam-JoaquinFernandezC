class CartController < ApplicationController
  def show
    @pizzas = current_order.pizzas
  end
end
