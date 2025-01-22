class Developer < Employee

  def initialize(name, age, salary, team)
    super(name, age, salary)
    @team = team
  end

  def display_details
    "Developer Details-\nName: #{@name}\nAge: #{@age}\nSalary: #{@salary}\nProgramming Language: #{@team}\n"
  end
end