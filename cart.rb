class Cart
	# This class will be used for one trip to the grocery store
	# It is only concerend with one cart and one customer
	# It is not responsible for human interaction



	attr_accessor :all_product_names, :all_product_prices, :library, :product_name		# attr_accessor will create for me both a method and a parameter

	def initialize (something)					#  you need to pass the information data to the Cart
		puts "welcome"
		# @customer = something
		@all_product_names = []
		@all_product_prices = []
		@library = []
		@product_name = ""
		
	end

	def product_library
		# @library = [[2,"apple"], [1.5,"orange"], [4,"milk"], [3.5,"eggs"], [5,"bread"]]
	end

	def add_items_to_cart(item)				# I can add (products) to my cart
		@all_product_names << item			# calling .name on it will only give me the name of the item
	end

	def find_price(something)
		library = [[2,"apple"], [1.5,"orange"], [4,"milk"], [3.5,"eggs"], [5,"bread"]]
		@match = (library.rassoc(something))[0]
	end


	# def get_price_of_item(item)
	# 	library = [[2,"apple"], [1.5,"orange"], [4,"milk"], [3.5,"eggs"], [5,"bread"]]
	# 	price = library.rassoc(@product_name)
	# 	a = price[0]
	# 	@all_product_prices << a
	# 	return a
	# end
end

