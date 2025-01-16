## Question 4: Regex for mobile number, email address, name, gender(M / F) and  amount

email_regex = /[A-Za-z0-9._]+@[A-Za-z0-9.-]+\.[A-Za-z]/

mobile_regex = /\d{10}/

name_regex = /[A-Za-z]/

gender_regex = /[MmFf]/

amount_regex = /\d+/


puts "Enter Name:"

name = gets.chomp

puts name.match?(name_regex) ? "Name is Valid" : "Name is Invalid!"

puts "Enter Gender:"

gender = gets.chomp

puts gender.match?(gender_regex) ? "Gender is Valid" : "Gender is Invalid!"


puts "Enter an email:"

email = gets.chomp

puts email.match?(email_regex) ? "Email is Valid" : "Email is Invalid!"


puts "Enter mobile number:"

mob_num = gets.chomp

puts mob_num.match?(mobile_regex) ? "Mobile number is Valid" : "Mobile number is Invalid!"


puts "Enter Amount:"

amount = gets.chomp

puts amount.match?(amount_regex) ? "Amount is Valid" : "Amount is Invalid!"


## Output

# Enter Name:
# Aman Pathan
# Name is Valid
# Enter Gender:
# M
# Gender is Valid
# Enter an email:
# amanpathan@gmail.com
# Email is Valid
# Enter mobile number:
# 9875674567
# Mobile number is Valid
# Enter Amount:
# 10000
# Amount is Valid

