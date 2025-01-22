## Question 1: Write a program to display number is prime or not

puts "Enter a number:"
input_number = gets.chomp


if /^\d+$/ =~ input_number
  input_number = input_number.to_i
else
  puts "Invalid Input"
  input_number = gets.chomp.to_i
end

flag = false

if input_number <= 1
  puts "#{input_number} is not a prime number"
else
  (2..Math.sqrt(input_number)).each do |factor|
    if input_number % factor == 0
      flag = true
      break
    end
  end
  
  if flag == true
    puts "#{input_number} is not a prime number"
  else
    puts "#{input_number} is a prime number"
  end
end


## Input: 22
## Output : 22 is not a prime number


## Input: 5
## Output : 5 is a prime number


## Input: 188
## Output : 188 is not a prime number


## Input: 11
## Output : 11 is a prime number