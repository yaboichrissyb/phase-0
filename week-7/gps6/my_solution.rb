# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
#define new class 'VirusPredictor', take state_of_origin, population_density and population as arguments, define each as instance variables for class VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#links two methods into one to make it easier to call both at same time

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private
#defines method predicted_deaths that takes population_desnisty, population and state from state_data file.
#Has five conditional statements based on population_density, effects percentage of population predicted to die
#.floor method rounds float down to nearest whole integer
#returns string with state and number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
     if @population_density >= 50
     number_of_deaths = @population * 0.1*(@population_density/50.to_i).to_i
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
#defines method speed_of_spread which takes population_density and state as arguments outputs a speed in months
#higher pop desnisty results in faster spread.
#returns a string with state and speed.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 50
      speed += 2/(@population_density/50.to_i).to_i
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, value|
  current_virus_predictor = VirusPredictor.new(state, value[:population_density],value[:population])
  current_virus_predictor.virus_effects
end

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
I guess this is used because we have a nested hash.  The state key is pointing to an entire new hash so having a different syntax helps visually differentiate the two.  I don't know that they serve any functional difference.

What does require_relative do? How is it different from require?
  Require relative denotes the sibling file that is required for the performance of the other.  In this case, the required relative file is the state_data.rb file which houses all the data used by the program.  Required is similar but requires that the programmer provide the precise address of the file, since it is not a nearby relative.

What are some ways to iterate through a hash?
You can use .each, each_with_index or key and map.

When refactoring virus_effects, what stood out to you about the variables, if anything?
We were using instance variables so we didn't need to define the arguments each method took.

What concept did you most solidify in this challenge?
The idea of keeping code DRY.  The effectiveness of instance variables and how they are different than local variables when defining methods.  Writing driver code for nested hashes.
=end