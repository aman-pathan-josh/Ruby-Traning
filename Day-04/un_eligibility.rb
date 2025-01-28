module CountryUNFitness
  def check_un_eligibility(country_name, gdp, state_of_country, army_strength)
    if gdp >= 1000000 && (state_of_country == 'Developing' || state_of_country == 'Developed') && army_strength >= 100000
      "#{country_name} is Eligible to have a seat in United Nations Security Council." 
    else
      "#{country_name} is not Eligible to have a seat in United Nations Security Council!" 
    end
  end
end
