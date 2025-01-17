## Question 2: write a program for students to print their school level according to grade
### e.g -
### if grade is between 1-5 return elementary
### if grade is between 6-8 return middle school
### if grade is between 9-12 return high school
### if grade is between otherwise return college


puts "Enter a number:"

grade = gets.chomp

if /^\d+$/ =~ grade
  grade = grade.to_i
else
  puts "Enter Valid Input:"
  grade = gets.chomp.to_i
end

case grade

when 0
  puts "Invalid Input"
when 1..5
  puts "Elementary"
when 6..8
  puts "Middle School"
when 9..12
  puts "High School"
else
  puts "College"
end



## Input: 3
## Output: Elementary

## Input: 7
## Output: Middle School

## Input: 8
## Output: Middle School

## Input: 10
## Output: High School

## Input: 14
## Output: College
