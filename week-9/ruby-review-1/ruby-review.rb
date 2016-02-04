# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
=begin
input: randomly generated number 1-100
output: updated array with corresponding message
-create class bingoboard that accepts two-dimensional array of pos integers btw 1-100
-create a method that generates a random number between 1-100
-create a mathod that checks for the presence of that random number in your nested arrays.
  -IF numbers match, replace number at index with X and print  updated array
  -ELSE print out message saying NO MATCH
-Create methods that check for all types of bingos

-HORIZONTAL: IF all numbers in a nested array, index 0-4 are equal to X, return BINGO
-VERTICAL: IF all nested arrays 0-4 values at the same index either 0,1,2,3 or 4 have values equal to 'X', return Bingo
-DIAGONAL1: IF all indexes with values equal to 'X' are equal to the index of the array as whole, return BINGO
-DIAGONAL2: IF all indexes with values equal to 'X' are equal to the absolute value of the index value - 4, return BINGO
=end

# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]


# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]


# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]




# Initial Solution
#1. Create the class
class BingoChecker
  def initialize(board)
      @board = board
  end
end
#2.  There are four ways to return a bingo: a column, row, bottom/top diagonal, or top/bottom diagonal;
  #a. For each of these directions, lets make an individual method that returns true or false if it found a bingo
  #b. If any of these cases are true we get a "BINGO!" else "SORRY!".

  def check_board
      if in_row? || in_column? || in_descending_diagonal? || in_ascending_diagonal?
          puts "BINGO!"
        else
          puts "SORRY!"
        end
      end

  #4. Now let's start by getting each of those four methods working one at a time
  #5.  Let's start with in_row? since that's probably the easiest.  With the nested array, @board, each element is an array; therefore if any of these are a row of x's, BINGO!
  #6.  Let's also make a @key in our initialize to define our winning BINGO [x,x,x,x,x] so we can compare returns easily throughout the program.

  def initialize (board)
    @board = board
    @key = ['x','x','x','x','x']
  end

  #7 Now let's iterate through @board and see if any of the rows match our new @key

  def in_row?
    @board.each do |row|
      if row == @key
        return true
      end
    end
    false
  end

  #Make som simple chacks and we now move to in_column?

  row_test_1 = BingoChecker.new([[47, 44, 71, 8, 88],['x', 'x', 'x', 'x', 'x'],[83, 85, 97, 89, 57],[25, 31, 96, 68, 51],[75, 70, 54, 80, 83]])
  row_test_2 = BingoChecker.new( [[47, 44, 71, 8, 88],['x', 'x', 'x', 'x', '31'],[83, 85, 97, 89, 57],[25, 31, 96, 68, 51],[75, 70, 54, 80, 83]])
  puts "test1 should return true: ", row_test_1.in_row? == true
  puts "test2 should return false: ", row_test_2.in_row? == false

  #9.  Wouldn't it be cool if we could just flip the array so columns became rows?
  #10. TRANSPOSE http://www.ruby-doc.org/core-2.1.5/Array.html#method-i-transpose; lets use our same logic from rows and done.

  def in_column?
    @board.transpose.each do |column|
      if column == @key
        return true
      end
    end
    false
  end

  #11.  in_descending_diagonal?, the diagonal is starting in the top left corner going down to the bottom right.
  #12.  If I iterate over each row, I want to grab the element whose index matches the current rwos index
    #a. Then I want to compare these accumulated values to @key and see if they match
  #13.  We need something that can manage the row and its index;
  #14.  Map returns an array and each_with_index lets me manage my row AND index!

  def in_descending_diagonal?
    if @board.each_with_index.map {|row, index| row[index]} == @key
      true
    else
      false
    end
  end

  dec_diag_test_1 = BingoChecker.new([['x', 44, 71, 8, 88],[22, 'x', 75, 65, 73],[83, 85, 'x', 89, 57],[25, 31, 96, 'x', 51],[75, 70, 54, 80, 'x']])
 dec_diag_test_2 = BingoChecker.new([[1, 44, 71, 8, 88],[22, 'x', 75, 65, 73],[83, 85, 'x', 89, 57],[25, 31, 96, 'x', 51],[75, 70, 54, 80, 'x']])

  puts "test1 should return true: ", dec_diag_test_1.in_descending_diagonal? == true
 puts "test2 should return false: ", dec_diag_test_2.in_descending_diagonal? == true

  #15 in_ascending_diagonal? is similar except this time when I'm looking at a row, I want to start from the LAST element in that row and move to the first.
  #16.  Since each_with_index lets me play with 0,1,2,3,4 and I basically need row[4], row[3], row[2]...I can start my value at 4 and SUBTRACT the index.

  def in_ascending_diagonal?
    if @board.each_with_index.map {|row, index| row[4-index]} == @key
      true
    else
      false
    end
  end

  inc_diag_test_1 = BingoChecker.new([[13, 14, 86, 1, 'x'],[33, 88, 25, 'x', 3],[21, 17, 'x', 41, 32],[1, 'x', 26, 73, 36],['x', 60, 6, 10, 42]])
 inc_diag_test_2 = BingoChecker.new([[13, 14, 86, 1, 'x'],[33, 88, 25, 'x', 3],[21, 17, 'x', 41, 32],[1, 'x', 26, 73, 36],[1, 60, 6, 10, 42]])



# Refactored Solution
=begin
In refactoring, my major goal is to eliminate repetition with improved logic and methods.  We're calling @board and @key throughout our class, though accessing these variables would be better left for attr_reader so we can communicate out intent.  So we should add attr_reader :board and :key before our initialize to replace all instance variables with the new method.
Right now, we also have to tell the board what our key is, we can instead generate it from its creation so if we end up with a 6x6 board, we don't have to chage our key.  To achieve this, we can replace our key [x,x,x,x,x] with Array.new(board.length, 'x')
=end
class BingoCheckerRefactored

  def initialize (board)
    @board = board
    @key = Array.new(board.length, 'x')
  end

  def check_board
    in_row? || in_column? || in_descending_diagonal? || in_ascending_diagonal? ? (puts "BINGO!") : (puts "SORRY!")
  end

  private

  attr_reader :board, :key

  def in_row?
    board.any? {|row| row == key}
  end

  def in_column?
    board.transpose.any? {|column| column == key}
  end

  def in_descending_diagonal?
    board.each_with_index.map {|row, index| row[index]} == key
  end

  def in_ascending_diagonal?
    board.each_with_index.map {|row, index| row[-1 - index]} == key
  end
end




# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

#Driver Code
=begin
board5 = BingoChecker.new([[13, 14, 86, 1, 'x'],[33, 88, 25, 'x', 3],[21, 17, 'x', 41, 32],[1, 'x', 26, 73, 36],[1, 60, 6, 10, 42]])
 board6 = BingoChecker.new([[1, 44, 71, 8, 88],[22, 'x', 75, 65, 73],[83, 85, 'x', 89, 57],[25, 31, 96, 'x', 51],[75, 70, 54, 80, 'x']])
 board7 = BingoChecker.new([[47, 44, 71, 12, 88],[22, 69, 75, 'x', 73],[83, 85, 97, 'x', 57],[25, 31, 96, 'x', 51],[75, 70, 54, 'x', 83]])
 board8 = BingoChecker.new( [[47, 44, 71, 8, 88],['x', 'x', 'x', 'x', '31'],[83, 85, 97, 89, 57],[25, 31, 96, 68, 51],[75, 70, 54, 80, 83]])
 puts "Should see 4 SORRY!"
  board5.check_board
  board6.check_board
  board7.check_board
  board8.check_board

  board1 = BingoChecker.new([[13, 14, 86, 1, 'x'],[33, 88, 25, 'x', 3],[21, 17, 'x', 41, 32],[1, 'x', 26, 73, 36],['x', 60, 6, 10, 42]])
 board2 = BingoChecker.new([['x', 44, 71, 8, 88],[22, 'x', 75, 65, 73],[83, 85, 'x', 89, 57],[25, 31, 96, 'x', 51],[75, 70, 54, 80, 'x']])
 board3 = BingoChecker.new( [[47, 44, 71, 8, 88],['x', 'x', 'x', 'x', 'x'],[83, 85, 97, 89, 57],[25, 31, 96, 68, 51],[75, 70, 54, 80, 83]])
 board4 = BingoChecker.new([[47, 44, 71, 'x', 88],[22, 69, 75, 'x', 73],[83, 85, 97, 'x', 57],[25, 31, 96, 'x', 51],[75, 70, 54, 'x', 83]])
 puts "Should see 4 BINGO!"
  board1.check_board
  board2.check_board
  board3.check_board
  board4.check_board
=end

# Reflection
=begin
What concepts did you review in this challenge?
This challenge was a good review of class creation, attr_reader methods, basic iteration in Ruby, and for me, a good review of pseudocoding and thinking through a larger, more abstract problem logically and step-by-step.  It also helped to have Andrew's helpful tutorial which I relied upon heavily for my initial solution.  I found that the challenge description was a bit vague and had a hard time visualizing what I was supposed to accomplish; what the inputs and outputs would be.

What is still confusing to you about Ruby?
Some of the syntax is still confusing.  There's a lot of what's been described as syntactic sugar, which, for me as a new developer, can actually stop me from fully understanding how the code works.  This is one reason that I've strated to prefer JavaScript to Ruby.  At this point in my experience and understanding, I enjoy and appreciate having to be as explicit as possible.  One thing, while looking at Andrew's tutorial, that really surprised me was the ability to iterate through the nested array using row and column.  I still don't fully understand how this is possible without defining explicitly accessing the nested arrays and objects of the arrays by index.

What are you going to study to get more prepared for Phase 1?
I plan on going through as many of the Ruby module challenges as possible as well as reviewing codecademy's Ruby track.  There are a number of syntactic things that, after spending so much time on JavaScript, seem almost entirely foreign to me again, such as accessing nested attributes as well as how to use some of the more common methods associated with hashes and arrays.
=end