def print_word(guessed_word_array)
  current_word = guessed_word_array.join(separator = " ")

  print "\n\t#{current_word}\n\n"
end

def get_word_to_guess(random_int,words_hash)
  category_words = words_hash[random_int]
  category_index = rand(category_words.length)
  word = category_words[category_index]
  return word
end

def check_guess(user_inp, total_chances, guess_flag)
  if guess_flag
    print "\n.....................................\n"
    print "\n\tYou guessed it right!\n\n"
    return 1
  else
    print "\n.....................................\n"
    if user_inp.length > 1
      print "\n   Enter single character at a time!\n\n"
      return 1
    else
      print "\n\tOops!..Wrong Guess!\n\n"
      return 0
    end
  end
end

def check_win_condition(win_flag,score,guessed_word_array,word_to_guess)
  if win_flag
    print "\nCongratulations! You have guessed the right word!\n\n"
    print "\n\t #{print_word(guessed_word_array)}\n"
    return 1
  else
    print "\n\tYou could not save the man!\n\tYou Lost\n\n"
    print "\n\tWord was: #{word_to_guess.upcase}\n"
    return 0
  end
end

def hangman_game(random_int, score)
  win_flag = false
  words_hash = {
    0 => ['lion', 'tiger','kangaroo','panda', 'bear', 'elephant', 'monkey'],
    1 => ['flamingo','peacock','eagle','crow','parrot','owl'],
    2 => ['banana','mango','papaya','apple','kiwi','pineapple','orange','cherry'],
    3 => ['usa', 'india', 'japan', 'australia', 'canada','france','germany', 'china'],
    4 => ['eye','nose','ear','hand','lung','heart','mouth','leg','stomach'],
  }
  word_to_guess = get_word_to_guess(random_int,words_hash)
  word_length = word_to_guess.length

  total_chances = 5

  letter_count = 0

  guessed_word_array = Array.new(word_length,'_')

  while total_chances <= 5 && total_chances > 0

    if letter_count == word_length
      win_flag = true
      break
    end

    print "\n\tChances Left: #{total_chances}\n"
    
    print "\n\t    #{print_word(guessed_word_array)}\n"
    
    print "\tGuess: "
    user_inp = gets.chomp.downcase

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

    if guessed_word_array.include?(user_inp.upcase) && guess_flag == false
      print "\n.....................................\n"
      print "\n\tThis letter is already guessed!\n"
      next
    end

    if check_guess(user_inp, total_chances, guess_flag) == 0
      total_chances -= 1
    end
  end

  win_or_loose = check_win_condition(win_flag, score, guessed_word_array,word_to_guess)
  if win_or_loose == 1
    score += 10
  end

  print "\t Your Score: #{score}\n"
  print "......................................\n"
  return win_or_loose, score
end

def start_game

  print "\n\tWelcome to HangMan Game!\n\n"
  print "\n There are 5 levels and each level has score 10\n"

  category_list = ['Animals','Birds','Fruits','Countries','Body Parts']

  score = 0
  
  level = 1

  choice = 'yes'

  while level <= 5

    if choice == 'yes' || choice == 'y'

      print "\n.....................................\n"
      print "\n\t   Level: #{level}\n\n"
      print ".....................................\n"

      random_int = rand(5)
      
      
      category = category_list[random_int]

      print "\n\tCategory: #{category}\n\n"

      level_check = -1

      level_check,score = hangman_game(random_int, score)
      if level_check == 0
        break
      end
      level+=1
      if level<5
        print "\nDo you want to Continue Game [Yes/No]?\n"
        choice = gets.chomp.downcase
      end
    else
      print "\nThank You for playing the Hangman Game!\n"
      break  
    end
  end
  
  if level > 5
    print "\n Congratulations! You have cleared all the levels!\n\n"
  end
end

start_game

## Output


# Welcome to HangMan Game!


# There are 5 levels and each level has score 10

# .....................................

#           Level: 1

# .....................................

#        Category: Birds


#        Chances Left: 5

#        _ _ _ _ _ _

           
#        Guess: a

# .....................................

#        You guessed it right!


#        Chances Left: 5

#        _ A _ _ _ _

           
#        Guess: i

# .....................................

#        Oops!..Wrong Guess!


#        Chances Left: 4

#        _ A _ _ _ _

           
#        Guess: e

# .....................................

#        Oops!..Wrong Guess!


#        Chances Left: 3

#        _ A _ _ _ _

           
#        Guess: p

# .....................................

#        You guessed it right!


#        Chances Left: 3

#        P A _ _ _ _

           
#        Guess: r

# .....................................

#        You guessed it right!


#        Chances Left: 3

#        P A R _ _ _

           
#        Guess: r

# .....................................

#        You guessed it right!


#        Chances Left: 3

#        P A R R _ _

           
#        Guess: o

# .....................................

#        You guessed it right!


#        Chances Left: 3

#        P A R R O _

           
#        Guess: r

# .....................................

#        This letter is already guessed!

#        Chances Left: 3

#        P A R R O _

           
#        Guess: t

# .....................................

#        You guessed it right!


# Congratulations! You have guessed the right word!


#        P A R R O T


        
#         Your Score: 10
# ......................................

# Do you want to Continue Game [Yes/No]?
# yes