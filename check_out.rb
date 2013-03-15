# require "./customer"
# require "./product"
require "./cart"

# This is where my loop will be 

class Checkout
	attr_accessor :prodduct_name

# start checkout
	def self.start
		@@checkout = Cart.new("")
		puts "Give a product to the cashier"
		product_name = gets.chomp.downcase
		while !@@checkout.cash_out(product_name)	# change this later							
			self.show_results						# if i did a self.show_results(prodduct_name) I can passes the parameter product_name to show_results, don't need to use @@ all the time
		end			
	end

# show results
	def self.show_results

		begin
			# puts "Give a product to the cashier"
			# product_name = gets.chomp.downcase
			# while !@@checkout.cash_out?	 	
				puts "Item just scanned is #{product_name}"
				@@checkout.check_for_valid_item(product_name)  							# raises the exception here 
				@@checkout.add_items_to_cart(product_name)
			
				puts "Price of #{product_name} is $#{@@checkout.find_price(product_name)}"
				puts "These are all the prices in an array #{@@checkout.collect_prices}"   		#remove later
				puts "This is your current bill #{@@checkout.add_all_prices}"
				puts "Here is your current grocery list #{(@@checkout.customer_items)}"
				puts ""
			# end
		
		rescue Cart::InvalidGuessException => e											# exception rule only occurs within begin
	  		puts e.message

	 	end
		# anything here will run even after an exception is called
		puts "test"

	end
end


