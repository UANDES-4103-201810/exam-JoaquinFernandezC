class PizzasController < ApplicationController
  def create
    @order = current_order
    @pizza = @order.pizzas.new(pizza_params)
    @pizza.save
    session[:order_id] = @order.id
  end

  def destroy
    @order = current_order
    @pizza = @order.pizzas.find(params[:id])
    @pizza.destroy
    @pizzas = @order.pizzas
  end

  private
  def pizza_params
    params.require(:pizza).permit(:crust_id, :recipe_id)
  end
end
