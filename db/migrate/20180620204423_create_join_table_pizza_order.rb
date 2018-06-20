class CreateJoinTablePizzaOrder < ActiveRecord::Migration[5.2]
  def change
    create_join_table :pizzas, :orders do |t|
    t.index [:pizza_id, :order_id]

    end
  end
end
