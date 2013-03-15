# require "./customer"
# require "./product"
require "./cart"

# This is where my loop will be 

class Checkout
	attr_accessor :product_name

# start checkout
	def self.start
		@@checkout = Cart.new("")

		while product_name != "checkout"											
			product_name = gets.chomp.downcase
			self.show_results(product_name)					# this passes the parameter product_name to show_results, don't need to use @@ all the time
		end		
	end

# show results
	def self.show_results(product_name)
		puts "Give a product to the cashier"
		begin
			
			puts "Item just scanned is #{product_name}"
			@@checkout.check_for_valid_item(product_name)  							# raises the exception here 
			@@checkout.add_items_to_cart(product_name)
		
			puts "Price of #{product_name} is $#{@@checkout.find_price(product_name)}"
			puts "These are all the prices in an array #{@@checkout.collect_prices}"   		#remove later
			puts "This is your current bill #{@@checkout.add_all_prices}"
			puts "Here is your current grocery list #{(@@checkout.customer_items)}"
			puts ""

	 	rescue Cart::InvalidGuessException => e											# exception rule only occurs within begin
	  		puts e.message

	 	end
		# anything here will run even after an exception is called
		puts "test"

	end
end


