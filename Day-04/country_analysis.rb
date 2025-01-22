# Assignment 4- 

# A CLI application for handling data of as many countries as we can. Example of what data that we can have:
# Population
# GDP(Gross Domestic Production)
# States
# Army Strength
# State of country(developing, developed)
# Etc.
# On the basis of all these data we will be building modules to conceive various outputs like:
# Whether that country will get a loan from the IMF (International Monetary Fund) or WB (World bank).
# Whether the country can have a seat in the UN (United Nations) Security council.
# Whether the country can win the war or not

require './loan_eligibility.rb'
require './un_eligibility.rb'
require './war_fitness.rb'

class Country

  def initialize(country_name, gdp, states, army_strength, state_of_country, population)
    @name = country_name
    @population = population
    @gdp = gdp
    @states = states
    @army_strength = army_strength
    @state_of_country = state_of_country
  end

  def diplay_country_data
    puts "Country Name: #{@name}"
    puts "Population: #{@population}"
    puts "Number of States: #{@states}"
    puts "GDP: #{@gdp} million USD"
    puts "Army Strength: #{@army_strength} Active Troops"
    puts "State of Country: #{@state_of_country}"
  end
end

class CountryAnalysis

  include CountryLoanEligibility
  include CountryUNFitness
  extend CountryWarFitness

  def initialize
    @countries = [
      Country.new("united states", 25000000, 50, 1390000, "Developed", 331000000),
      Country.new("india", 3730000, 28, 1450000, "Developing", 1400000000),
      Country.new("china", 19370000, 23, 2035000, "Developing", 1440000000),
      Country.new("germany", 4310000, 16, 184000, "Developed", 83000000),
      Country.new("brazil", 2080000, 26, 360000, "Developing", 216000000),
      Country.new("afghanistan", 20000, 34, 150000, "Underdeveloped", 41100000),
      Country.new("somalia", 7500, 6, 20000, "Underdeveloped", 17000000)
    ]
  end
  # countries = [ "united states", "india", "china", "germany", "brazil", "afghanistan", "somalia"]
  def get_country_name
    puts "Enter Country Name:"
    while true
      user_input = gets.chomp
      if /^[a-zA-Z]+$/ =~ user_input
        return user_input.downcase
      else 
        print "Enter Valid Country Name\n"
      end
    end
  end
  
  def get_country_data
    country_name = get_country_name

    # p @countries.find { |current_country| current_country.name == country_name }
    
    @countries.each do |country|
      if country.name == country_name
        country.diplay_country_data
      end
    end

    if country
      puts "\n---------------------------------------"
      country.diplay_country_data
    else
      puts "Country Not Found!"
    end
  end

  def get_country_analysis
    country_name = get_country_name

    country = @countries.find { |current_obj| current_obj.country_name.downcase == country_name }
    if country
      puts '...............................................'
      print "\nData of Country #{country_name}:\n"
    
      print "\nIs Country eligible for Loan?\n"
      print check_loan_eligibility(country.country_name.capitalize, country.gdp)
      print "\n"
    
      print "\nCan Country have a seat in United Nations Security Council?\n"
      print check_un_eligibility(country.country_name.capitalize, country.gdp, country.state_of_country, country.army_strength)
      print "\n"

      # print "\nCan Country Win a War?\n"
      # print CountryWarFitness.check_war_win_chances(country_name.capitalize, country[:army_strength])
      # print "\n"
        
    else
      puts "Country Not Found!"
    end
  end

  def check_eligibility
    while true
      puts '.....................................................'
      puts "\nEnter 1 to Get Details"
      puts "\nEnter 2 to Display Country Data"
      puts "\nEnter 0 to Exit"
      puts "\nEnter Choice:"
  
      user_input = gets.chomp
      if /^\d$/ =~ user_input
        user_input = user_input.to_i
      else
        print "Enter valid choice!\n"
        user_input = gets.chomp.to_i
      end
  
      case user_input
  
      when 0
        break
  
      when 2
        get_country_data
      when 1
        get_country_analysis
      end
    end  
  end

end
 
CountryAnalysis.new.check_eligibility


# country_name = Country.new.get_country_name
        # @country_data.each do |country|
        #   if country[:country_name] == country_name
        #     puts '...............................................'
        #     print "\nData of Country #{country_name}:\n"
          
        #     current_country = Country.new
        #     print "\nIs Country eligible for Loan?\n"
        #     print current_country.check_loan_eligibility(country_name, country[:gdp])
        #     print "\n"
          
        #     print "\nCan Country have a seat in United Nations Security Council?\n"
        #     print current_country.check_un_eligibility(country_name, country[:gdp], country[:state_of_country], country[:army_strength])
        #     print "\n"
              
            # print "\nCan Country Win a War?\n"
            # print CountryWarFitness.check_war_win_chances(country_name, country[:army_strength])
            # print "\n"
            
        #   end
        # end


## Output

# Enter 1 Get Details

# Enter 2 to Display Country Data

# Enter 0 to Exit

# Enter Choice:
# 1
# Enter Country Name:
# Germany
# .....................................................

# Data of Country Germany:

# Is Country eligible for Loan?
# Germany is Eligible for Loan

# Can Country have a seat in United Nations Security Council?
# Germany is Eligible to have a seat in United Nations Security Council.

# Can Country Win a War?
# Germany will win the War
# .....................................................

# Enter 1 Get Details

# Enter 2 to Display Country Data

# Enter 0 to Exit

# Enter Choice:
# 2
# Enter Country Name:
# Germany

# Data of Germany:
# Population: 83000000
# GDP: 4310000 million USD
# Number of States: 16
# Army Strength: 184000 Active Troops
# State of Country: Developed
# .....................................................

# Enter 1 Get Details

# Enter 2 to Display Country Data

# Enter 0 to Exit

# Enter Choice:
# 0