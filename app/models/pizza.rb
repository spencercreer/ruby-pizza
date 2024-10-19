class Pizza < ApplicationRecord
    has_many :pizza_toppings
    has_many :toppings, through: :pizza_toppings
  
    validates :name, presence: true, uniqueness: true
    validates :toppings, presence: true
end
  