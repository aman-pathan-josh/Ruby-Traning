module CountryLoanEligibility

  def check_loan_eligibility(country_name, gdp)
    if gdp > 1000000
      "#{country_name} is Eligible for Loan"
    else
      "#{country_name}is Not Eligible for Loan!"
    end
  end

end