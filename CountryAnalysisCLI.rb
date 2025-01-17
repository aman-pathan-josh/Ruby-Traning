# Assignment - 

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


module CountryLoanFitness

  def check_loan_eligibility(country_name,gdp)
    if gdp > 1000000
      "#{country_name} is Eligible for Loan"
    else
      "#{country_name}is Not Eligible for Loan!"
    end
  end

end

module CountryWarFitness
  def check_war_win_chances(country_name,army_strength)
    if army_strength >= 100000
      "#{country_name} will win the War"
    else
      "#{country_name} will not win the War"
    end
  end

end

module CountryUNFitness
  def check_un_eligibility(country_name,gdp, state_of_country, army_strength)
    if gdp >= 1000000 && (state_of_country == 'Developing' || state_of_country == 'Developed') && army_strength >= 100000
      "#{country_name} is Eligible to have a seat in United Nations Security Council." 
    else
      "#{country_name} is not Eligible to have a seat in United Nations Security Council!" 
    end
  end
end

country_data = [
  {
    country_name: "United States",
    gdp: 25000000, 
    states: 50,
    army_strength: 1390000,
    state_of_country: "Developed",
    population: 331000000
  },
  {
    country_name: "India",
    gdp: 3730000, 
    states: 28,
    army_strength: 1450000,
    state_of_country: "Developing",
    population: 1400000000
  },
  {
    country_name: "China",
    gdp: 19370000, 
    states: 23,
    army_strength: 2035000,
    state_of_country: "Developing",
    population: 1440000000
  },
  {
    country_name: "Germany",
    gdp: 4310000, 
    states: 16,
    army_strength: 184000,
    state_of_country: "Developed",
    population: 83000000
  },
  {
    country_name: "Brazil",
    gdp: 2080000, 
    states: 26,
    army_strength: 360000,
    state_of_country: "Developing",
    population: 216000000
  },
  {
    country_name: "Afghanistan",
    gdp: 20000,
    states: 34,
    army_strength: 150000,
    state_of_country: "Underdeveloped",
    population: 41100000
  },
  {
    country_name: "Somalia",
    gdp: 7500,
    states: 6,
    army_strength: 20000,
    state_of_country: "Underdeveloped",
    population: 17000000
  }
]




class Country

  include CountryLoanFitness
  include CountryUNFitness
  include CountryWarFitness

  def diplay_country_data(country_data)
    puts "Enter Country Name:"
    country_name = gets.chomp
    print "\nData of #{country_name}:\n"
    country_data.each do |country|
      if country[:country_name] == country_name
        print "Population: #{country[:population]}\n"
        print "GDP: #{country[:gdp]} million USD\n"
        print "Number of States: #{country[:states]}\n"
        print "Army Strength: #{country[:army_strength]} Active Troops\n"
        print "State of Country: #{country[:state_of_country]}\n"
      end
    end
  end

end


while true

  puts '.....................................................'
  puts "\nEnter 1 Get Details"
  puts "\nEnter 2 to Display Country Data"
  puts "\nEnter 0 to Exit"
  puts "\nEnter Choice:"

  user_input = gets.chomp.to_i

  case user_input

  when 0
    break

  when 2
    Country.new.diplay_country_data(country_data)

  when 1
    puts "Enter Country Name:"
    country_name = gets.chomp
    country_data.each do |country|
      if country[:country_name] == country_name
        puts '.....................................................'
        print "\nData of Country #{country_name}:\n"
      
        current_country = Country.new
        print "\nIs Country eligible for Loan?\n"
        print current_country.check_loan_eligibility(country_name, country[:gdp])
        print "\n"
      
        print "\nCan Country have a seat in United Nations Security Council?\n"
        print current_country.check_un_eligibility(country_name, country[:gdp], country[:state_of_country], country[:army_strength])
        print "\n"
          
        print "\nCan Country Win a War?\n"
        print current_country.check_war_win_chances(country_name, country[:army_strength])
        print "\n"
        
      end
    end
  end
end

  

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