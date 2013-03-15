##THE SHOPPING CART PROGRAM##
# Product (code, price (5.50))≈
# Customer (name)
# Shopping Cart 
#  - for a customer
#  - can add products to the cart, one at a time
#  - checkout (return the total amount)z


require 'test/unit'
require './check_out'


class CheckoutTest < Test::Unit::TestCase

	def test_check_for_valid_item
		all_product_names = ["apple", "orange", "milk", "eggs", "bread"]
		c = Cart.new("")
		assert_raise true, c.all_product_names.include?("apple")

	end
end

