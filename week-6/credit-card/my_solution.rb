# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
class CreditCard
  def initialize(number)
  @number = number
    if number.to_s.length != 16
      raise ArgumentError.new("Invalid 16-digit credit card number.")
    end
  end

  attr_reader :number

  def check_card
    credit_number_1 = number.to_s.chars.map(&:to_i)
    credit_number_2 = Array.new
    credit_number_1.each_index do |n|
      if n.even?
        credit_number_2[n] = (credit_number_1[n] * 2)
      else credit_number_2[n] = credit_number_1[n]
      end
    end
    credit_number_2.each_index do |n|
      if credit_number_2[n] > 9
         x = credit_number_2[n] - 10
         credit_number_2 << x
         credit_number_2[n] = 1
      end
    end
    if credit_number_2.inject{|sum,x| sum + x } % 10 == 0
    p true
    else; p false
    end

  end

end

number = 4408041234567901
my_card = CreditCard.new(number)
my_card.check_card



# Refactored Solution

class CreditCard
  def initialize(card_number)
    @card_number = card_number
    if card_number.to_s.length != 16
    raise ArgumentError.new("Invalid 16-digit card number.")
    end
  end

  attr_reader :card_number

  def check_card
    card_number_1 = card_number.to_s.chars.map(&:to_i)
    card_number_2 = Array.new
    card_number_1.each_index do |n|
      if n.even?
        card_number_2[n] = (card_number_1[n] * 2)
      else
        card_number_2[n] = card_number_1[n]
      end
    end
    card_number_2.each_index do |n|
      if card_number_2[n] > 9
        x = card_number_2[n] - 10
        card_number_2 << x
        card_number_2[n] = 1
      end
    end
    if card_number_2.inject{|sum,x| sum + x } % 10 == 0
    p true
    else; p false
    end
  end
end

card_number = 4408041254367901
my_card = CreditCard.new(card_number)
my_card.check_card

=begin
What was the most difficult part of this challenge for you and your pair?
Initially, the most challenging part was organizing the control flow of if/else statements to sort the individual integers into a new array and then to split them if greater than ten.

What new methods did you find to help you when you refactored?
Not really a new method, but we did use the each_index and inject methods that we didn't come up with immediately in our first initial solution.

What concepts or learnings were you able to solidify in this challenge?
I was able to better solidify my knowledge of attr_reader and generally how best to define a class.


=end

