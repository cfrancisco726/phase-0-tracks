# Virus Predictor

# I worked on this challenge [ with: Christopher Frazzini].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# obtaining information from another file in same folder
# obtains information from other built in ruby files
require_relative 'state_data'



class VirusPredictor

# creates the attributes
# setting them available through out the whole class
# passing in state, density, population

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calling 2 methods and passing in arguments
 

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private

# if/else depending on population_density 
# prints what state will lose # of deaths 

  def predicted_deaths
    # predicted deaths is solely based on population density
    counter = 200
    x = 0.4
    until counter == 0
      if  @population_density >= counter
          number_of_deaths = (@population * x).floor
          p "#{@state} will lose #{number_of_deaths} people in this outbreak"
          break
      elsif 
          @population_density
          counter < 50
          number_of_deaths = (@population * 0.05).floor
          p "#{@state} will lose #{number_of_deaths} people in this outbreak"
        break
      end
        counter -= 50
        x -= 0.1
    end
  end
m

# conditional statements
# prints the speed of spreading

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    counter = 200
    x = 0.5
    until counter == 0 
      if @population_density >= counter
        speed = x
         puts " and will spread across the state in #{speed} months.\n\n"
        break
      elsif 
        @population_density
        counter < 50
        puts " and will spread across the state in 2.5 months.\n\n"
        break
      end
      counter -= 50
      x += 0.5
    end
end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, pop_info|
  state_info = VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])
  state_info.virus_effects
end

#reflect
# 1. rocket and symbols
# 2. require_relatvie - obtaining information from another file in same folder
#    require - obtains information from other built in ruby files
# 3. each loop through a block with key and value
#    while or until loops work too. Just need to access each element in hash. 
# 4. instance variables are accessible through out the whole class
# 5. Accessing hashes inside hashes.  


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects




#=======================================================================
# Reflection Section