
require './productspurchased.rb'

class ShoppingCart

  @@shopping_cart = []

  def self.show_contents
    return @@shopping_cart
  end

  def self.add_product(product)
    @@shopping_cart << product
    return @@shopping_cart
  end

  def self.remove_product(product)
    @@shopping_cart.delete(product)
    return @@shopping_cart
  end

  def self.total_cost_before_tax
    total_before_tax = 0
    @@shopping_cart.each do |product|
      total_before_tax += product.price
    end
    return total_before_tax
  end

  def self.total_cost_after_tax
    total_after_tax = 0
    @@shopping_cart.each do |product|
      total_after_tax += product.calculate_total_price
    end
    return total_after_tax
  end

end

my_cart = ShoppingCart.new
wine1 = Wine.new("Red", 10)
wine2 = Wine.new("Rose", 12)
ShoppingCart.add_product(wine1)
ShoppingCart.add_product(wine2)
puts ShoppingCart.show_contents
puts ShoppingCart.total_cost_before_tax
puts ShoppingCart.total_cost_after_tax
