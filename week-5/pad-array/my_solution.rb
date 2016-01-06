# Pad an Array

# I worked on this challenge Mike Pintar

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

# What is the input? an array, a minimum array size, and an optional argument for what the array should be padded with
# Output? A new array padded with the pad value up to the minimum size
# Count the number of objects in the array
# if array size is greater than or equal to minimum returns array
# if array size is less than the minimum array size then we need to add padding of third argument equal to the difference btw the actual array size and minimum size
#return array with padding



# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
 if array.length >= min_size
    return array
  else
    pad_size = min_size - array.length
    counter = 0
    while counter < pad_size
       array << value
       counter+=1
    end
    return array
  end
end


def pad(array, min_size, value = nil)
  new_array = []
  array.each { |x| new_array << x }
  if new_array.length >= min_size
    return new_array
  else
    pad_size = min_size - array.length
    pad_array = Array.new(pad_size,value)
    new_array = (array + pad_array)
    return new_array
  end
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
 if array.length >= min_size
    return array
  else
   pad_size = min_size - array.length
   for i in 1..pad_size
    array.push(value)
    end
    return array
  end
end

def pad(array, min_size, value = nil)
  new_array = array.clone
  if array.length >= min_size
    return new_array
  else
    pad_size = min_size - array.length
    for i in 1..pad_size
    new_array.push(value)
    end
    return new_array
  end
end


# 4. Reflection
#Were you successful in breaking the problem down into small steps?

#Yes, but I think we could have broken it down into even smaller steps.  I think the more detailed you are in the pseudocode, the easier it is to actually write the code when you get to it.

#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

#It was pretty easy to translate the pseudocode to the extent that it was written, though we had sort of skimmed over some steps and didn't find we were missing them until we read the error messages.

#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

#The initial errors we encountered said that our destructive method was non-destructive and our non-destructive method was in fact destructive.  We had made errors in sytnax essentially that prevented the code from being read the way we intended.

#When you refactored, did you find any existing methods in Ruby to clean up your code?

#We used a more stremlined version of the push method in order to write multiple iterations out more simply.

#How readable is your solution? Did you and your pair choose descriptive variable names?

#We did go back and change some variable names to make the code more readable.  We also talked through in words what the code was doing in both the initial and refactored versions so we made sure we both understood how the code worked in the same way.

#What is the difference between destructive and non-destructive methods in your own words?

#Destructive methods alter the input so that the next time the method is called, the input will have changed.  In this way, the output is actually the same as the next input.  Non-destructive methods set a new local variable equal to that input - or at least that's how my partner and I did it, I'm sure there's more than one way - so that when the method is called each time, the input values remain the same.
