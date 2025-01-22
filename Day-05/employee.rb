class Employee

  def initialize(name, age, salary)
    @name = name
    @age = age
    @salary = salary
  end  

  def display_details
    "Employee Details-\nName: #{@name}\nAge: #{@age}\nSalary: #{@salary}"
  end    
end