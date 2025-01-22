require './company.rb'
require './employee.rb'
require './manager.rb'
require './developer.rb'

class Admin
  include Company

  Company.display_company_name
  
  manager = Manager.new("John", 30, 120000, "HR")
  puts manager.display_details
  
  print "\n"

  developer = Developer.new("Sam", 22, 70000, "Ruby")
  puts developer.display_details

end