require "./cart"

# This file is where my loop will be 

class Checkout

# start checkout
	def self.start
		@@checkout = Cart.new
		until @@checkout.cash_out?	# change this later	
			puts "Give a product to the cashier"
			@@product_name = gets.chomp.downcase						
			self.show_results															# if i did a self.show_results(prodduct_name) I can passes the parameter product_name to show_results, don't need to use @@ all the time
		end
		rescue Cart::Checkout => e														# exception rule only occurs within begin
	  		puts e.message
	end

# show results
	def self.show_results
		begin
			@@checkout.check_for_valid_item(@@product_name)								# raises the exception here 
			@@checkout.add_items_to_cart

			puts "Item just scanned is #{@@product_name}"
		
			puts "Price of #{@@product_name} is $#{@@checkout.find_price}"
			puts "These are all the prices in an array #{@@checkout.collect_prices}"   	#remove later
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


