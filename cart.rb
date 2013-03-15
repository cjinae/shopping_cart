class Cart
	# This class will be used for one trip to the grocery store
	# It is only concerend with one cart and one customer
	# It is not responsible for human interaction

	attr_accessor :all_product_names, :all_product_prices, :library, :product_name, :prices	# attr_accessor will create for me both a method and a parameter

	def initialize (something)					#  you need to pass the information data to the Cart
		puts "welcome"
		# @customer = something
		@all_product_names = []
		@all_product_prices = []
		@library = []
		@product_name = ""
		@price = ""
		@all_prices = []
		
	end

	def add_items_to_cart(item)				
		@all_product_names << item			
	end

	def find_price(something)
		library = [[2,"apple"], [1.5,"orange"], [4,"milk"], [3.5,"eggs"], [5,"bread"]]
		@price = (library.rassoc(something))[0]
	end

	def collect_prices
		@all_prices << @price
	end

	def add_all_prices
		@all_prices.inject(:+)
	end



end

