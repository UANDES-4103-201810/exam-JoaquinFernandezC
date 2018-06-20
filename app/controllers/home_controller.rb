class HomeController < ApplicationController
  def index
    @recipes = Recipe.all
    @pizza = current_order.pizzas.new
  end
end
