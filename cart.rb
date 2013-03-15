class Cart
	# This class will be used for one trip to the grocery store
	# It is only concerend with one cart and one customer
	# It is not responsible for human interaction

library = [[2,"apple"], [1.5,"orange"], [4,"milk"], [3.5,"eggs"], [5,"bread"]]

	attr_accessor :all_product_names, :all_product_prices 			# attr_accessor will create for me both a method and a parameter

	def initialize#(something)					#  you need to pass the information data to the Cart
		# @customer = something
		@all_product_names = []
		@all_product_prices = []
	end

	def add_items_to_cart(item)					# I can add (products) to my cart
		@all_product_names << item			# calling .name on it will only give me the name of the item
	end

	def get_price_of_item
		price = library.rassoc(item)
		a = price[0]
		@all_product_prices << a
		puts "hello"
	end
end

