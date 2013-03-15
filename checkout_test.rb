##THE SHOPPING CART PROGRAM##
# Product (code, price (5.50))≈
# Customer (name)
# Shopping Cart 
#  - for a customer
#  - can add products to the cart, one at a time
#  - checkout (return the total amount)z


require 'test/unit'
require './cart'


class CartTest < Test::Unit::TestCase

	def test_cart_products
		@item = "grapes"
		assert_equal("grapes")
	end

	def test_cart_price
	end

end

