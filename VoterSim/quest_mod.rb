
module Questions

	#this method takes a string
	#and returns a string with every word
	#capitalized
	def capi(string)
		string = string.split
		string.map! do |e|
			e.capitalize
		end
		string.join(' ')
	end

	#takes a string to output to the
	#user as a question or statement
	#and returns the input capitalized
	def name_helper(string)
		done = false
		until done
			puts string
			ans = gets.chomp
			if ans != ""
				done = true
			end
		end
		capi(ans)
	end

	def what_to_do
		done = false
		until done
			puts "What would you like to do?
(C)reate, (L)ist, (U)pdate, or (V)ote"
			ans = gets.chomp.downcase.chars.first
			if (ans != nil) && (ans=="c" || ans=="l" || ans=="u" || ans=="v")
				done = true
			else
				puts "Illegal choice!"
				sleep(1)
			end
		end
		ans
	end

	def enter_name
		name_helper("Please enter the name!")
	end

	def enter_party
		done = false
		until done
			puts "Please enter the party
(D)emocrat or (R)epublican"
		 	ans = gets.chomp.downcase.chars.first
		 	if (ans != nil) && (ans=="d" || ans=="r")
		 		done = true
		 		case ans
		 		when "d"
		 			results = "Democrat"
		 		when "r"
		 			results = "Republican"
		 		else
		 			"Wrong input!"
		 		end
		 	else
		 		puts "Illegal choice!"
		 		sleep(1)
		 	end
		 end
		 results
	end



	def create
		done = false
		until done
			puts "What would you like to create?
(P)olitician or (V)oter"
		 	ans = gets.chomp.downcase.chars.first
		 	if (ans != nil) && (ans=="p" || ans=="v")
		 		done = true
		 	else
		 		puts "Illegal choice!"
		 		sleep(1)
		 	end
		end
		ans
	end

	def update
		done = false
		until done
			puts "Who would you like to update?"
		 	ans = gets.chomp
			if ans != ""
				done = true
			end
		end
		 capi(ans)
	end

	def politics
		done = false
		until done
			puts "Please enter the prefered political views!
(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
			ans = gets.chomp.downcase.chars.first
			if (ans != nil) && (ans=="l" || ans=="c" || ans=="t" || ans=="s" || ans=="n")
				done = true
				case ans
				when "l"
					results = "Liberal"
				when "c"
					results = "Conservative"
				when "t"
					results = "Tea Party"

				when "s"
					results = "Socialist"

				when "n"
					results = "Neutral"
				else
					puts "Wrong Input"
				end
			else
				puts "Illegal choice!"
				sleep(1)
			end
		end
		results
	end

	def new_name
		name_helper("New Name?")
	end

	def new_politics
		politics
	end


end
