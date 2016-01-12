# Your Names
# 1) Chris Bunkers
# 2) Jeremy Oltean

# We spent 1 hour 40 min on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless library.key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  #check to make sure item_to_make is in the library hash
  #IF not, return error message
  serving_size = library[item_to_make]
  #define the serving size as the value in the key/value pairs in 'Library'
  remaining_ingredients = num_of_ingredients % serving_size #remaining ingredients, equal to num argument and serving size hash value
  output = "Calculations complete: Make #{num_of_ingredients / serving_size} #{item_to_make} "

  return output + if remaining_ingredients > 0
  "you have #{remaining_ingredients} leftover ingredients. Suggested baking items: " +
          if remaining_ingredients >= 5
          "cake"
          else
          "#{remaining_ingredients} cookie(s)"
          end
          else
          output.chomp(" ") + "."
     end
end

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

I guess I learned that, to some extent, it's up to the individual coder's personal preference.  Also, that it's important to consider overall structure, variable names, and even the types of methods you use.  All of these affect readability.  And, always keep it DRY.

Did you learn any new methods? What did you learn about them?

I learned what value_at does and that it's not very useful for arrays.  I learned the .key? method and that it IS useful for iterating through hashes.

What did you learn about accessing data in hashes?

I learned the .key? method.  I got some good syntax reminders on how to easily access data in hashes; not through overly-complex methods like value_at but with simple brackets/parentheses that point to the correct key/value or pair.

What concepts were solidified when working through this challenge?

We were able to solidify some basic syntax best practices and were reminded that certain syntaxes, while not necessarily incorrect, may have unintended consequences.  We were also able to solidify some control flow concepts and DRY.

=end