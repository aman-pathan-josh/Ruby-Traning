module CountryWarFitness
  def self.check_war_win_chances(country_name,army_strength)
    if army_strength >= 100000
      "#{country_name} will win the War"
    else
      "#{country_name} will not win the War"
    end
  end

end