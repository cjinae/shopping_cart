# require "./customer"
# require "./product"
require "./cart"

# This is where my loop will be 

class Checkout
	attr_accessor :product_name

# start checkout
	def self.start
	@@checkout = Cart.new("")
		while true							# fix later
			self.show_results
		end		
	end

# show results
	def self.show_results
		puts "Give a product to the cashier"
			product_name = gets.chomp.downcase
		puts "Item just scanned is #{product_name}"
		puts "Price of #{product_name} is $#{@@checkout.find_price(product_name)}"
		puts "These are all the prices in an array #{@@checkout.collect_prices}"   		#remove later
		puts "This is your current bill #{@@checkout.add_all_prices}"
		puts "Here is your current grocery list #{@@checkout.add_items_to_cart(product_name)}"
		puts ""
	end
end


# c = Customer.new("Rob",50)			
# cart = Cart.new(c)						# you are passing the customer name to the cart

# p1 = Product.new("kiwi", 10)
# # p1.price								# => 1
# p2 = Product.new("apples", 2)

# p cart.add_items_to_cart(p1)			# this calls the add method to my cart and passing p1 
# p cart.all_prices_of_items_in_cart(p1)	# this calls the total method to my cart
# p cart.total_cost_of_cart				# this calls the method to give the total cost of my cart

