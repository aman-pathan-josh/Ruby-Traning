class Manager < Employee

  def initialize(name, age, salary, department)
    super(name, age, salary)
    @department = department
  end

  def display_details
    "Manager Details-\nName: #{@name}\nAge: #{@age}\nSalary: #{@salary}\nDepartment: #{@department}\n"
  end
end
