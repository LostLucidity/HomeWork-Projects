class Individual
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def voting(plist)
		plist[rand(0...plist.length)]
	end
end