# RELEASE 2: NESTED STRUCTURE GOLF

# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]
# attempts:
p array[1][1][2][0]
#=================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
#p hash{:outer}{:inner}{"almost"}{3}
p hash[:outer][:inner]["almost"][3]
# ===============================================

# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
p nested_data[:array][1][:hash]
#=================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of? Array
    element.map! {|inner| inner + 5}
  else
    element + 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

#initial
startup_names.map! do |string|
  if string.kind_of? Array
    string.map! do |base|
      if base.kind_of? Array
        base.map! {|inner| inner + "ly"}
      else
        base + "ly"
      end
    end
  else
    string + "ly"
  end
end
p startup_names

#refactor
startup_names.flatten!.map! { |string| string + "ly" }

p startup_names

=begin
What are some general rules you can apply to nested arrays?

Personally, I wouldn't use them unless necessary because they do add a level of confusion to your code.  But, when using them, be sure to think through and be aware of what level of array/hash data your methods are manipulating.

What are some ways you can iterate over nested arrays?

If you're applying the same method to all elements within the array, you can just flatten the array and use map.  If you're performing different methods on each level, you can use control flow if/elsif/else statements to target different levels.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We did reuse a few good methods like map! and flatten! We wanted these to be destructive so we used the versions with the bang operator.  I hadn't used kind_of? that I can think of, but based on the example in release 0, it seemed like a good choice for selecting a nested array out of the method arguments.
=end