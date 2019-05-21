require 'pry'
require_relative 'model1.rb'
require_relative "model2.rb"
require_relative "model3.rb"
# require all of you files up here
require 'pry'
require_relative 'model1.rb'
require_relative "model2.rb"
require_relative "model3.rb"
# require all of you files up here
customer1 = Customer.new("Sally")
customer2 = Customer.new("Piggy")
driver1 = Driver.new("Eli")
driver2 = Driver.new("Charlie")
order1 = Order.new(customer1, driver1)
order2 = Order.new(customer1, driver1)
order3 = Order.new(customer2, driver2)
customer1.orders
customer2.driver
driver1.orders
driver2.customer
customer1.satisfaction(7)
customer2.satisfaction(4)
customer1.satisfaction(6)
customer2.satisfaction(10)
customer1.satisfaction(9)
Pry.start
