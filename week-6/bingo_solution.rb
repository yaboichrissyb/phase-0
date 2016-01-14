# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# 1
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#create a hash with each bingo letter as keys and pointing to a integer value representing columns
#create a variable called number set to an array of 1..100, inclusive
#write a method that takes a random string from the first hash and a random number from number variable
#print the letter and number together

# 2
# Check the called column for the number called.
  #fill in the outline here
  #for each row number 0..4, if it has a number equal to the random number at the value corresponding to the letter key


# If the number is in the column, replace with an 'x'
 #replace the number with "X"
 #Print congratulatory message and new array

# Display a column to the console

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution
#================= METHOD 1 ======================
letter = ["B", "I", "N", "G", "O"]
number = (0..101).to_a

def bingo_num(letter, number)
  puts letter.sample.tr('"', "") + number.sample.to_s
end

puts bingo_num(letter, number)
#=================================================
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
    def new_board
      @hash = { "B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
      @letter = @hash.keys.sample
      @number = rand(1..100).to_s
      p @letter + @number
  end

  def check
    for i in 0..4
      if @bingo_board[i][@hash.values_at(@letter).fetch(0)] == @number.to_i
        @bingoboard[i][@hash.values_at(@letter).fetch(0)] = "X"
        @hash.each do |key|
          print "#{key}"
          sleep 0.2
        end
        puts
        for i in 0..4 do
          print "#{@bingo_board[i]}\n"
        end
      end
    end
  end
end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
    def new_num
      @bingo_columns = { "B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
      @letter = @bingo_columns.keys.sample
      @number = rand(1..100).to_s
      @i = @bingo_columns.values_at(@letter).fetch(0)
      p @letter + @number
  end

  def check
    for i in 0..4
      if @bingo_board[i][@i]== @number.to_i
        @bingo_board[i][@i] = "X"
        20.times do
        print "."
        sleep 0.1
        end
        print "GOT ONE!!!\n"
        for i in 0..4 do
          print "#{@bingo_board[i]}\n"
        end
      end
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]
new_game = BingoBoard.new(board)
new_game.new_num
new_game.check

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  This was very difficult to pseudocode because it was hard to break the problem up into smaller steps.

What are the benefits of using a class for this challenge?
  We can call the random number any number of times and create a new board but allow it to change over time as we work towards a bingo.

How can you access coordinates in a nested array?
What methods did you use to access and modify the array?
  You can access the contents of a nested array but simpling calling the index of the nested array as an object in the first array, and then calling the object you want to access in the nested array by its index number.  I used keys, sample, value_at, and fetch.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  I don't remember using fetch before.  You call it on a hash and give it a key to 'fetch' the value associated with the key.  I used it to fetch the value representing each row of the bingo board to check whether the random number generated was found in the bingo_board array.

How did you determine what should be an instance variable versus a local variable?
  The instance variables would be things directly tied to my class instances that I may want to check, write or modify at a later point.
What do you feel is most improved in your refactored solution?
  I was able to replace some of the code with a local variable representing repeated lines of code.  I also made the print out a bit prettier.  Overall, I do still find the code a bit hard to read and even confusing.
=end