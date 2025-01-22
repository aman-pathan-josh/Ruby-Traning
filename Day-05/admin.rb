require './company.rb'
require './employee.rb'
require './manager.rb'
require './developer.rb'

class Admin
  include Company
  extend Company

  Admin.new.display_company_name
  Admin.display_company_name
  
  manager = Manager.new("John", 30, 120000, "HR")
  puts manager.display_details
  
  print "\n"

  developer = Developer.new("Sam", 22, 70000, "Ruby")
  puts developer.display_details

end


# Company name is Josh Software
# Manager Details-
# Name: John
# Age: 30
# Salary: 120000
# Department: HR

# Developer Details-
# Name: Sam
# Age: 22
# Salary: 70000
# Programming Language: Ruby