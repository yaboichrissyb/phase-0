# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode
=begin
-DEF new method that takes a number as argument
-RETURN argument error if number is negative or greater than 100
-CREATE empty string variable  that will be returned
-CREATE LEFT variable that stores how much of number is left to convert to string
-CREATE WRITE variable that is part of number that we are converting now
-CREATE conditional statements to check LEFT for num 0-9 if WRTIE = 1, ADD english version of teens to empty string array
-CREATE conditional statements for when WRITE = 2-9, ADD english version of tens digit to empty string if true
-CREATE conditional statements to check whether WRITE in ones equal to 1-9, ADD english version to empty string if true.
-IF the empty string is still empty, return 'zero'
-ELSE return the number string
=end



# Initial Solution
def EnglishNumber(number)
  if number < 0
    return 'Please enter a number greater than 0'
  end
  if number > 100
    return "Please enter a number less than or equal to 100"
  end

  number_string = ''
  left = number
  write = left/100
  left =left - write*100
  if write > 0
    return "one hundred"
  end

  write = left/10
  left = left - write*10

  if write > 0
    if write ==1
      if left == 0
        number_string = number_string + 'ten'
      elsif left == 1
        number_string = number_string + 'eleven'
      elsif left == 2
        number_string = number_string + 'twelve'
      elsif left == 3
        number_string = number_string + 'thirteen'
      elsif left == 4
        number_string = number_string + 'fourteen'
      elsif left == 5
        number_string = number_string + 'fifteen'
      elsif left == 6
        number_string = number_string + 'sixteen'
      elsif left == 7
        number_string = number_string + 'seventeen'
      elsif left == 8
        number_string = number_string + 'eighteen'
      elsif left == 9
        number_string = number_string + 'nineteen'
      end

      left = 0
    elsif write == 2
      number_string = number_string + "twenty"
    elsif write == 3
      number_string = number_string + "thirty"
    elsif write == 4
      number_string = number_string + "forty"
    elsif write == 5
      number_string = number_string + "fifty"
    elsif write == 6
      number_string = number_string + "sixty"
    elsif write == 7
      number_string = number_string + "seventy"
    elsif write == 8
      number_string = number_string + "eighty"
    elsif write == 9
      number_string = number_string + "ninety"
    end

    if left > 0
      number_string = number_string + "-"
    end
  end

  write = left
  left = 0

  if write > 0
    if write == 1
      number_string = number_string + 'one'
    elsif write == 2
      number_string = number_string + 'two'
    elsif write == 3
      number_string = number_string + 'three'
    elsif write == 4
      number_string = number_string + 'four'
    elsif write == 5
      number_string = number_string + 'five'
    elsif write == 6
      number_string = number_string + 'six'
    elsif write == 7
      number_string = number_string + 'seven'
    elsif write == 8
      number_string = number_string + 'eight'
    elsif write == 9
      number_string = number_string + 'nine'
    end
  end

  if number_string == ""
    return "zero"
  end

    number_string
    end

# Refactored Solution
def EnglishNumber(x)
  if x < 0
    return 'Please enter a number greater than 0'
  end
  if x > 100
    return "Please enter a number less than or equal to 100"
  end

  number_string = ''
  left = x
  write = left/100
  left =left - write*100
  if write > 0
    return "one hundred"
  end

  write = left/10
  left = left - write*10

  if write > 0
    if write ==1
      if left == 0
        number_string += 'ten'
      elsif left == 1
        number_string += 'eleven'
      elsif left == 2
        number_string += 'twelve'
      elsif left == 3
        number_string += 'thirteen'
      elsif left == 4
        number_string += 'fourteen'
      elsif left == 5
        number_string += 'fifteen'
      elsif left == 6
        number_string += 'sixteen'
      elsif left == 7
        number_string += 'seventeen'
      elsif left == 8
        number_string += 'eighteen'
      elsif left == 9
        number_string += 'nineteen'
      end

      left = 0
    elsif write == 2
      number_string += "twenty"
    elsif write == 3
      number_string += "thirty"
    elsif write == 4
      number_string += "forty"
    elsif write == 5
      number_string += "fifty"
    elsif write == 6
      number_string += "sixty"
    elsif write == 7
      number_string += "seventy"
    elsif write == 8
      number_string += "eighty"
    elsif write == 9
      number_string +="ninety"
    end

    if left > 0
      number_string += "-"
    end
  end

  write = left
  left = 0

  if write > 0
    if write == 1
      number_string += 'one'
    elsif write == 2
      number_string += 'two'
    elsif write == 3
      number_string += 'three'
    elsif write == 4
      number_string += 'four'
    elsif write == 5
      number_string += 'five'
    elsif write == 6
      number_string += 'six'
    elsif write == 7
      number_string += 'seven'
    elsif write == 8
      number_string += 'eight'
    elsif write == 9
      number_string += 'nine'
    end
  end

  if number_string == " "
    return "zero"
  end

    number_string
    end

puts EnglishNumber(100)
puts EnglishNumber(23)
puts write = 80/100
puts write > 0

# Second Refactoring -> 1000s
def EnglishNumber(x)
  if x < 0
    return "Please enter a positive number."
  end
  if x == 0
    return "zero"
  end

  number_string = ''
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen" "sixteen", "seventeen", "eighteen", "nineteen"]
  tens = ["ten", "twenty", "thirty", "forty", "fifty" ,"sixty", "seventy", "eighty", "ninety"]

  left = x
  write = x/100
  left -= write*100

  if write > 0
    hundreds = EnglishNumber(write)
    number_string += hundreds + " hundred" #recursion baby!
    if left > 0
      number_string += ""
    end
  end

  write = left/10
  left -= write*10

  if write > 0
    if ((write == 1) and (left > 0))
      number_string += teens[left-1]
      left = 0
    else
      number_string += tens[write -1]
    end

    if left > 0
      number_string += "-"
    end
  end

  write = left
  left = 0

  if write > 0
    number_string += ones[write-1]
  end
  number_string
end








# Reflection
=begin
What concepts did you review or learn in this challenge?
This was definitely a great review of conditional statements and the ruby syntax in general.  I didn't end up using many built in methods at all, so I might want to review some of those on my own time.  The refactoring worked a bit with arrays and helped me remember how to access specific elements in an array.  I also touched on recursion which I hadn't really used before, at least not successffully, so that wasn't even really review but still good to cover.

What is still confusing to you about Ruby?
Defining variables can be confusing.  Like, knowing which ones I need to define in order to complete the challenge with the correct input.  Knowing when to redefine each variable and how many variables I'll need at a time.  I guess this ties back into how I always seem to have the hardest time writing good pseudocode that can be translated into actual code.  The writing of the code isn't very difficult, especially when I'm not using a lot of methods, but envisioning how to get from A to B to C is difficult and I don't know how to work on this other than going through as many challenges as I have time for and struffling through the pseudocode as best I can.  Hopefully after enough time some kind of methodology will sink in or I'll start to see the light or whatever.  I guess we'll see.

What are you going to study to get more prepared for Phase 1?
Ruby's built in methods.  Especially those dealing with arrays/hashes.  I should probably also look at looping.  I may want to do more than one of these challenges to get ready for Phase 1, I may end up just doing as many as I can and continuing into week 9 with this.  I didn't feel I had an especially solid grasp of Ruby by the end of week-6 so I should do more than review even.


=end