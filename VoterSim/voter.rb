
class Voter < Individual
	attr_accessor :politics
	def initialize(name, politics)
		super(name)
		@politics = politics
	end

	def party_select(politics)
		case politics
		when "Tea Party"
			rand(0..100) <= 90 ? "Republican" : "Democrat"
		when "Conservative"
			rand(0..100) <= 75 ? "Republican" : "Democrat"
		when "Neutral"
			rand(0..100) <= 50 ? "Republican" : "Democrat"
		when "Liberal"
			rand(0..100) <= 25 ? "Republican" : "Democrat"
		when "Socialist"
			rand(0..100) <= 10 ? "Republican" : "Democrat"
		else
			"Please enter a legal politics view."
		end
	end

	def voting(rep_array, dem_array)
		party = party_select(@politics)
		party == "Republican" ? super(rep_array) : super(dem_array)
	end
end


