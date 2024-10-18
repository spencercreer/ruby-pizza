class AddIndexToToppingsName < ActiveRecord::Migration[7.2]
  def change
    add_index :toppings, :name, unique: true
  end
end
