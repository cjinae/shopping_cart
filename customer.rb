class Customer
	attr_accessor :name, :age  # attributes

	def initialize(name, age)	# parameters
		@name = name			# setting instance variable to local parameter
		@age = age
	end
end

