# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# The interpretor is expecting keyword_end
# 5. Where is the error in the code?
# The interpretor puts a ^ pointing to the error at the very end of the page.
# 6. Why did the interpreter give you this error?
# You need to enter 'end' twice in this block since there are two operations running.  Because you have a 'while' operation,  it will look until it is also ended.

# --- error -------------------------------------------------------

#south_park="show"

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
#  Name Error
# 3. What additional information does the interpreter provide about this type of error?
# There is an undefined local variable.
# 4. Where is the error in the code?
# It's pretty much all over the line since there are multiple ways to correct it.
# 5. Why did the interpreter give you this error?
# You can't just leave an undefined variable out like this.  It serves no purpose and has not output.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# No Method Error
# 3. What additional information does the interpreter provide about this type of error?
# Undefined method 'cartman' for main:object
# 4. Where is the error in the code?
# throughout line 51, I guess psecifically in between the ().
# 5. Why did the interpreter give you this error?
# The computer is expecting parameters once you use the method syntax.

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 66 and 70
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# Following cartmans_phrase, where the computer is expecting arguments/parameters for the method which you've defined.
# 5. Why did the interpreter give you this error?
# You can't have a method without parameters/arguments, expecially if you're going to call the method later.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 89
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# Immmediately after cartman_says.
# 5. Why did the interpreter give you this error?
# The method requires an argument vale in order to be called.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 106
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#106 and 110
# 5. Why did the interpreter give you this error?
#On line 106 the method is defined with two arguments but then later on 110 when the method is called, only one argumen is entered.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 125
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# A String can't be coerced into Fixnum
# 4. Where is the error in the code?
# 125, in the order of the operations.
# 5. Why did the interpreter give you this error?
# You can't multiply an integer by a string, you can only multiply a string by an integer.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 140
# 2. What is the type of error message?
#zero division error
# 3. What additional information does the interpreter provide about this type of error?
# Divided by zero
# 4. Where is the error in the code?
# in '/''
# 5. Why did the interpreter give you this error?
# You can't divide an integer by zero.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 156
# 2. What is the type of error message?
# A Load Error
# 3. What additional information does the interpreter provide about this type of error?
#  Cannot load such file
# 4. Where is the error in the code?
# in require_relative
# 5. Why did the interpreter give you this error?
# This file doesn't exist on my computer.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?

The second one was the most difficult at first because I couldn't tell what type of error it was.  The Syntax itself of the error message changes when it's not a syntax error causing the reporting of the error message.

How did you figure out what the issue with the error was?

I saw kept going and saw that this continued to happen with different types of errors.

Were you able to determine why each error message happened based on the code?

I'm not completely clear on why the second error occurred, only how to fix it.  I don't completely understand why you need to input 'end' twice on such a simple block of code.

When you encounter errors in your future code, what process will you follow to help you debug?

First of all, I'll be sure to read the error messages more carefully from now on.  I think the more I read them, the better I'll become at understanding the different types of errors and why they occur, this will help me resolve errors and hopefully make less erros in the future.  I'll first find what line the error is on, see what type of error it is and what extra information is supplied, then try to locate the precise place on the line where the error occurs.  I'll do my best to correct the error, then check it.  If I can't figure out why I'm getting the error message, I'll google that type of error and look for examples.
=end
