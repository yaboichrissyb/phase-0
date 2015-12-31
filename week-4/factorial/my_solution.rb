# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [ with: Chris B].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Sum of the numbers
# Steps to solve the problem.
# Sum the numbers in the array
# Return the sum

# 1. total initial solution
def total(array)
  temp = 0
  array.each { |n| temp = temp + n }
  return temp
end

# 3. total refactored solution
def total(array)
 array.inject(0) { |result, element| result + element }
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: complete pseudocode sentence
# Steps to solve the problem.
#capitalize first letter of first string
#add spaces inbetween each string
#add period to last string


# 5. sentence_maker initial solution
def sentence_maker(array)
  array[0] = array[0].capitalize
  return array.join(' ') + '.'
end



# 6. sentence_maker refactored solution
def sentence_maker(array)
  array.join(' ').capitalize + '.'
end


