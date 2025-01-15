## Question :Print a-z in reverse order

```ruby
num = 26
letter = 'z'

while num >= 1
  print "#{letter} "
  letter = (letter.ord - 1).chr
  num -= 1
end
print "\n"
```

## Output

![alt text](<Screenshot from 2025-01-15 16-06-21.png>)