class CreateJoinTablePizzasToppings < ActiveRecord::Migration[7.2]
  def change
    create_join_table :pizzas, :toppings do |t|
    t.index [:pizza_id, :topping_id], unique: true
    t.index [:topping_id, :pizza_id]
    end
  end
end
