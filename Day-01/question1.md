## Question 1: Write a program to display number is prime or not

```ruby
puts "Enter a number:"
input_number = gets.to_i

flag = false

if input_number == 0 || input_number == 1
  puts "#{input_number} is not a prime number"
else
  for factor in 2..input_number-1 do
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
```

## Output

![alt text](<Screenshot from 2025-01-15 16-04-55.png>)