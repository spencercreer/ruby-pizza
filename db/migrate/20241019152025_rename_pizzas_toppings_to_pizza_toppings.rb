class RenamePizzasToppingsToPizzaToppings < ActiveRecord::Migration[7.2]
  def change
    rename_table :pizzas_toppings, :pizza_toppings
  end
end
