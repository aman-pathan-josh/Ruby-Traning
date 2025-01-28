class Car
  attr_accessor :model

  def initialize(brand, model, year)
    @brand = brand
    @model = model
    @year = year
    @engine_number = generate_engine_number
  end

  def display_details
    "Car Details:\nBrand: #{@brand}, Model: #{@model}, Year: #{@year}"
  end

  def display_engine_number
    "Car Engine Number: #{@engine_number}"
  end

  def self.car_class_method
    "This is the class method."
  end

  private

  def generate_engine_number
    "ENG-#{@model}-#{rand(100..1000)}"
  end
end

car_obj = Car.new("Tata", "Tiago", 2020)
puts car_obj.display_details

print "\n"

puts "Model: #{car_obj.model}"

print "\n"

car_obj = Car.new("Honda", "Civic", 2022)
puts car_obj.display_details

print "\n"

puts car_obj.display_engine_number

print "\n"

puts Car.car_class_method


# Output

# Car Details:
# Brand: Tata, Model: Tiago, Year: 2020

# Model: Tiago

# Car Details:
# Brand: Honda, Model: Civic, Year: 2022

# Car Engine Number: ENG-Civic-635

# This is the class method.
