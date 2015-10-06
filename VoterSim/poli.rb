class Politicians < Individual
	attr_accessor :party
	def initialize(name, party)
		super(name)
		@party = party
	end

	def voting
		name
	end
end