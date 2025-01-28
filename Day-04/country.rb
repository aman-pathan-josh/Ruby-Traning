class Country

  attr_reader :name, :gdp, :state_of_country, :army_strength

  def initialize(name, gdp, states, army_strength, state_of_country, population)
    @name = name
    @population = population
    @gdp = gdp
    @states = states
    @army_strength = army_strength
    @state_of_country = state_of_country
  end

  def diplay_country_data
    puts "Country Name: #{@name.capitalize}"
    puts "Population: #{@population}"
    puts "Number of States: #{@states}"
    puts "GDP: #{@gdp} million USD"
    puts "Army Strength: #{@army_strength} Active Troops"
    puts "State of Country: #{@state_of_country}"
  end
end
