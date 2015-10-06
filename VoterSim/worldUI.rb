require './quest_mod.rb'
require './world.rb'
include Questions

class WorldUI

	world = World.new

	puts "Welcome"
	done = false

	until done
		puts "*"*50
		to_do_ans = what_to_do
		case to_do_ans
		when "c"
			world.creating
		when "l"
			world.listing
		when "u"
			world.updating
		when "v"
			world.voting_sim
			done = true
		else
			puts "Ilegal choice!"
		end
	end

end