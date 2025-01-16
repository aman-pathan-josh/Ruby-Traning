## Question :Print a-z in reverse order

num = 26
letter = 'z'

while num >= 1
  print "#{letter} "
  letter = (letter.ord - 1).chr  
  num -= 1
end
print "\n"


## Output

# z y x w v u t s r q p o n m l k j i h g f e d c b a