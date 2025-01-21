def generate_array
  count = 5
  nums_generated = []

  while count > 0
      p count
      rand_int = rand(5)

      if !nums_generated.include?(rand_int)
        nums_generated.append(rand_int)
        count-=1
      end
  end 

  return nums_generated
end

arr = generate_array

p arr