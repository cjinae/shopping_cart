class Cart
	# This class will be used for one trip to the grocery store
	# It is only concerend with one cart and one customer
	# It is not responsible for human interaction
	class InvalidGuessException < StandardError 
	end
	class Checkout < StandardError
	end

	attr_accessor :all_product_names, :all_product_prices, :library, :product_name, :prices, :customer_items, :item 	# attr_accessor will create for me both a method and a parameter

	def initialize					#  you need to pass the information data to the Cart
		puts "Bonjour!"
		@all_product_names = []
		@library = []
		@item = ""
		@price = ""
		@all_prices = []
		@all_product_names = ["apple", "orange", "milk"]
		@customer_items = []
	end

	def check_for_valid_item(item)
		@item = item
		# puts "checking item array" + @all_product_names.include?(@item).to_s			# debugging tool by using puts ""
		if @item == "cash me out"
			cash_out?
		elsif	@all_product_names.include?(@item) == false
				raise InvalidGuessException.new("Sorry! #{@item} is not for sale")
			# elsif item == "I have no money!"
			# 	raise InvalidGuessException.new("That's too bad. See you next time.")
		end
	end

	def add_items_to_cart			
		@customer_items << @item			
	end

	def find_price
		puts @item
		@library = [[2,"apple"], [1.5,"orange"], [4,"milk"], [3.5,"eggs"], [5,"bread"]]
		@price = (@library.rassoc(@item))[0]
	end

	def collect_prices
		@all_prices << @price
	end

	def add_all_prices
		@all_prices.inject(:+)
	end

	# def unit_sum(item)
	# 	count = @all_product_names.count(item)
	# 	if  count >= 3
	# 		puts "I've scanned #{item} #{count} times, you must really like them!"
	# 	end
	# end


	def cash_out?
		if @item == "cash me out"
			true
			raise Checkout.new("Goodbye")
		end
	end

	# def exit_store(input)
	# 	if input == "I have no money!"
	# 		raise InvalidGuessException.new("Unfortunatly, you can't have these for free :(")
	# end

end

