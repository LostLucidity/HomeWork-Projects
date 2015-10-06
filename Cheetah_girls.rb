 auditions = [
  "Raven-Symone",
  "Usher",
  "Wiz Khalifa",
  "Adrienne Bailon",
  "Hulk Hogan",
  "Sabrina Bryan",
  "Diego Lugo",
  "Kiely Williams",
  "Justin Timberlake"
]
CHEETAH_GIRLS = [
  "Raven-Symone",
  "Adrienne Bailon",
  "Sabrina Bryan",
  "Kiely Williams"
]
panel = []
i = 0
while i < auditions.length
	j = 0
	while j < CHEETAH_GIRLS.length
		if auditions[i] == CHEETAH_GIRLS[j]
			panel << CHEETAH_GIRLS[j]
		end
		j += 1
	end
	i+= 1
end

puts panel
