def print_word(guessed_word_array)
  current_word = guessed_word_array.join(separator = " ")

  print "\n\t#{current_word}\n\n"
end


print "\n\tWelcome to HangMan Game!\n\n"
print "\n There are 5 levels and each level has score 10\n"

category_list = ['Animals','Birds','Fruits','Countries','Body Parts']

$win_flag = false

$score = 0

def hangman_game(random_int)
  words_hash = {
    0 => ['lion', 'tiger','kangaroo','panda', 'bear', 'elephant', 'monkey'],
    1 => ['flamingo','peacock','eagle','crow','parrot','owl'],
    2 => ['banana','mango','papaya','apple','kiwi','pineapple','orange','cherry'],
    3 => ['usa', 'india', 'japan', 'australia', 'canada','france','germany', 'china'],
    4 => ['eye','nose','ear','hand','lung','heart','mouth','leg','stomach'],
  }

  category_words = words_hash[random_int]
  category_index = rand(category_words.length)
  word_to_guess = category_words[category_index]
  word_length = word_to_guess.length

  total_chances = 5
  letter_count = 0

  guessed_word_array = Array.new(word_length,'_')

  while total_chances <= 5 && total_chances > 0
    if letter_count == word_length
      $win_flag = true
      break
    end
    # print "\n.....................................\n"
    print "\n\tChances Left: #{total_chances}\n"
    
    print "\n\t    #{print_word(guessed_word_array)}\n"
    
    print "\tGuess: "
    user_inp = gets.chomp
    guess_flag = false

    for i in 0..word_length

      if word_to_guess[i] == user_inp && guessed_word_array[i] == '_'
        guessed_word_array[i] = user_inp.upcase
        letter_count += 1
        guess_flag = true
        break
      else
        guess_flag = false
      end
    end
  
    if guess_flag
      print "\n.....................................\n"
      print "\n\tYou guessed it right!\n\n"
    else
      print "\n.....................................\n"
      print "\n\tOops!..Wrong Guess!\n\n"
      total_chances -= 1
    end
  end

  if $win_flag
    print "\nCongratulations! You have guessed the right word!\n\n"
    print "\n\t #{print_word(guessed_word_array)}\n"
    $score += 10
    print "\t Your Score: #{$score}\n"
    print "......................................\n"
    return 1
  else
    print "\n\tYou could not save the man!\n\tYou Lost\n\n"
    print "\n\tWord was: #{word_to_guess.upcase}\n"
    print "\n\t Your Score: #{$score}\n"
    print "\n......................................\n"
    return 0
  end
end


level = 1

while level <= 5
  print "\n.....................................\n"
  print "\n\t   Level: #{level}\n\n"
  print ".....................................\n"

  random_int = rand(5)
  
  category = category_list[random_int]

  print "\n\tCategory: #{category}\n\n"

  level_check = hangman_game(random_int)
  if level_check == 0
    break
  end
  level+=1
end


if level > 5
  print "\n Congratulations! You have cleared all the levels!\n\n"
end