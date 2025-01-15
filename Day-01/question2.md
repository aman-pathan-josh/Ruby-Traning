## Question 2: write a program for students to print their school level according to grade
### e.g -
### if grade is between 1-5 return elementary
### if grade is between 6-8 return middle school
### if grade is between 9-12 return high school
### if grade is between otherwise return college


```ruby
puts "Enter a number:"

grade = gets.to_i

case grade

when 1..5
  puts "Elementary"
when 6..8
  puts "Middle School"
when 9..12
  puts "High School"
else
  puts "College"
end
```

## Output

![alt text](<Screenshot from 2025-01-15 16-05-46.png>)