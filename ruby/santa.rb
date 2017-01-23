class Santa

	attr_reader :gender, :age, :ethnicity
	attr_accessor :gender, 

	def initialize(gender, ethnicity)
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
		@age += 1

		
	end 

	def get_mad_at(reindeer)
		new_reindeer = @reindeer_ranking.index(reindeer)
		@reindeer_ranking << @reindeer_ranking[new_reindeer]
		@reindeer_ranking.delete_at(new_reindeer)
		p "I am mad at #{reindeer} so he was moved to the back."
	end	

	# # setter methods
	# def gender 
	# 	@gender
	# end

	# # getter methods
	# def age=(new_age)
	# 	@age = new_age
	# end

	# def ethnicity=(new_ethnicity)
	# 	@ethnicity = new_ethnicity
	# end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times {santas << Santa.new(example_genders[rand(example_genders.length)], example_ethnicities[rand(example_ethnicities.length)]) }

#driver code
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

santas.each do |santa|	
	(rand(140)).times do |age1|
		santa.celebrate_birthday
	end

	p "This santa's age is #{santa.age} with a gender of #{santa.gender} and ethnicity of #{santa.ethnicity}"
	bad_reindeer = reindeer_ranking[rand(reindeer_ranking.length)]
	santa.get_mad_at(bad_reindeer)

end

#fat_santa = Santa.new

# p fat_santa.speak()
# p fat_santa.eat_milk_and_cookies("Kit Kat")









