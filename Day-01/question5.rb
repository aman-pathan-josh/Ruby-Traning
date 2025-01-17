## Question 5: Write a program to find IP address class.

### Class A IP address : 0.16.12.34 to 127.52.36.11.
### Class B IP address : 128.16.12.34 to 191.16.12.34.
### Class C IP address : 192.16.12.34 to 233.168.1.15.
### Class D IP address : 234.16.12.34 to 239.16.12.34.
### Class E IP address : 240.16.12.34 to 255.16.12.34.

def is_in_range?(field)
    if field = 0..255
        return true
    else
        return false
    end
end

ip_address_regex = /^([0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3})$/

puts "Enter the IP Address :"
input_string = gets.chomp

if input_string.match(ip_address_regex)
    
    substrings = input_string.split('.')
    first_substring = substrings[0].to_i
    second_substring = substrings[1].to_i
    third_substring = substrings[0].to_i
    fourth_substring = substrings[3].to_i

    if (0..255).include?(first_substring) && (0..255).include?(second_substring) && (0..255).include?(third_substring) && (0..255).include?(fourth_substring)
        case first_substring
        when 0..127
            puts "Class A"
        when 128..191
            puts "Class B"
        when 192..223
            puts "Class C"
        when 224..239
            puts "Class D"
        when 240..254
            puts "Class E"
        else
            puts "Not a valid IP address"
        end
    else
        puts "Not a valid IP address"
    end

else
    puts "Not a valid IP address"
end


## Output

# Enter the IP Address :
# 192.168.1.1
# Class C

# Enter the IP Address :
# 162.10.1.0
# Class B