# require "./customer"
# require "./product"
require "./cart"

# This is where my loop will be 

class Checkout
	def initialize
		
	end

# start checkout
	def self.start
		@checkout = Cart.new
		while true							# fix later
			self.show_results
		end
	end

	def self.total_cost_of_cart
		@checkout.all_product_prices.reduce(:+)
	end

# show results
	def self.show_results
		puts "Give a product to the cashier"
			product = gets.chomp
		puts "Item just scanned is #{product}"
		puts "This is the price of the item just scanned #{@checkout.get_price_of_item}"
		puts "This is the new bill #{self.total_cost_of_cart}"
		puts "Here is a list your current grocery list #{@checkout.add_items_to_cart}"
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

