require './individual.rb'
require './voter.rb'
require './poli.rb'
require './quest_mod.rb'
include Questions

# The world needs to keep track of:

# All the Voters
# All the Politicians
# The votes

class World
	attr_accessor :plist, :vlist
	def initialize
		@plist =[]
		@vlist =[]
	end

	#Method takes an arrayList and returns
	#the item with highest count of duplicates,
	#Or it returns multiple items if they have 
	#equal amount of duplicates all in an array
	def highest_count(list)
		if !list.empty?
			last_count = 0
			final_res = []
			i =0
			while i < list.length
				count =0
				list.each{|e| e == list[i] ? count +=1 : count *1 }
				if count > last_count
					last_count = count
					results = list[i]
					tie =[]
				elsif count == last_count
					if tie.empty? 
						tie << results
						tie << list[i]
					else
						tie << list[i]
					end
				end
				i+=1
			end
			final_res << results
			tie.empty? ? results : tie.uniq
		end
	end


		#to_do_ans = what_to_do
		# case to_do_ans
		# when "c"
	def creating
		create_ans = create
		if create_ans == "p"
			the_name = enter_name
			the_party = enter_party
			@plist << Politicians.new(the_name, the_party)
		elsif create_ans == "v"
			the_name = enter_name
			the_politics = politics
			@vlist << Voter.new(the_name, the_politics)
		else
			"Illegal Choice!"			
		end
	end

	def listing
	# when  "l"
		@plist.each do |each|	
				puts "Plotician: #{each.name}, #{each.party}"
		end
		@vlist.each do |each|
				puts "Voter: #{each.name}, #{each.politics}"
		end
	end

		def updating
			found = false
			the_name = update
			@plist.map do |each|
				if each.name == the_name
					the_new_name = new_name
					the_new_party = enter_party
					each.name = the_new_name
					each.party = the_new_party
					found = true
				end
			end
			if !found	
				@vlist.map do |each|
					if each.name == the_name
						the_new_name = new_name
						the_new_pol = new_politics
						each.name = the_new_name
						each.politics = the_new_pol
						found = true
					end
				end
			end
			if found
				puts "Update completed!"
			else
				puts "Name not found!"
			end
		end

			#found ? puts "Update completed!" : puts "Name not found!"
		def voting_sim
			rep =[]
			dem =[]
			candidates = []
			@plist.each {|each| 
				each.party == "Republican" ? rep << each.name : dem << each.name
			}
			@vlist.each {|each| candidates << each.voting(rep, dem)}
			@plist.each {|each| candidates << each.voting}
			winner = highest_count(candidates)
			if winner != nil
			the_winner = winner.length >1 ? winner[rand(0...winner.length)] : winner[0]
			puts "Simulation completed. The winner is #{the_winner}"
			end
		end
end












