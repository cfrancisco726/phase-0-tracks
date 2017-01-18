class Santa

	# def speak 
	# 	 "Ho, ho, ho! Haaaappy holidays!" 
	# end

	# def eat_milk_and_cookies(cookie)
	# 	"That was a good #{cookie}!"
	# end

	def initialize
		p "Initializing Santa instance ..."
	end

	def gender(sex)
	end

	def ethnicity(race)
	end

end

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
age = 0

# fat_santa = Santa.new

# p fat_santa.speak()
# p fat_santa.eat_milk_and_cookies("Kit Kat")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
