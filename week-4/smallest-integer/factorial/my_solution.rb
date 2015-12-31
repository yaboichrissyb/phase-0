# Factorial

# I worked on this challenge with Peter Liong.


# Your Solution Below

#taking a positive integer as input and returning the factorial of that input

# if the input is equal to 1 or 0 returns 1

# otherwise multiply the input by the product of all integers up to the input

#return factorial as output


def factorial(number)
  if number == 0
    return 1
  else
    i = number-1
    while i >= 1
      number = number * i
      i = i - 1
    end
    return number
  end
end

