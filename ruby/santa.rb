class Santa

	def initialize(gender, ethnicity)
		p "Initializing Santa instance..."
    	@gender = gender
		@ethnicity = ethnicity 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def santas_background
		p "Santas gender is #{@gender} and his ethnicity is #{@ethnicity}"
	end

	def speak 
	 	 puts  "Ho, ho, ho! Haaaappy holidays!" 
	 end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday

	end 

	def get_mad_at
	end	
end



# fat_santa = Santa.new

# p fat_santa.speak()
# p fat_santa.eat_milk_and_cookies("Kit Kat")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end


#driver code


santas.each do |santa|
	santa.santas_background
	
end