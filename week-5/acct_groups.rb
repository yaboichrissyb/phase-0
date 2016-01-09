#input: array of students
#make new array with student first/last names as strings
#randomly sort that array
#create new array for groups
#cut array into groups of five and push to group array as individual array objects
#create new leftovers variable
#if leftovers are less than or equal to 2 pop 2 from second to last array and push to final array
#return group array

students = ("Dong Wook Seo", "Aaron Hu", "Adam Pinskey", "Akeem Street", "Alex Forger", "Andrew Kin", "Baron Kwan", "Brian Bier", "Byron Gage", "Carl Conroy", "Charlie Bliess", "Christopher Bunkers", "Cody Kendall", "Coline Forde", "David Valencia", "Emily Claire Bosakowski", "Everett Golden", "Hagai Zwick", "Heather Conklin", "Ian Wudarksi", "Leronim Oltean", "Jake Hamilton", "James Boyd", "Jasmeet Chatrath", "Jenna El_Amin", "Jerrie Evans", "Joe Case", "Jonathan Case", "Jonathan Schwartz", "Jonathan Silvestri", "Kathryin Garabcz", "Ian Kinner", "Kyle Cierzan", "Kyle Zelman", "Andrew Larson", "Linda Oanh Ho", "Yiorgos Makridakis", "Matt Harris", "Matthew Baquerizo", "Menuka Samaranayake", "Michael Pintar", "Mollie Stein", "Lydia Nash", "Aaron Opsahl", "Peter Leong", "Peter Stratoudakis", "Prince Sadie", "Ryan F. Salerno", "Sanderfer Chau", "Sarah Finken", "Emmet Susslin", "Sydney Rossman_Reich", "Eric Tenza", "Thomas Yancey", "Tim Kelly", "Timothy Beck", "Tyler Doerschuk", "" )

#initial
def acct_groups(students)
   groups = Array.new
  students.shuffle.each_slice(5) { |x| groups << x }
end
  p groups
end

def sort_groups(acct_groups)
  leftovers = Array.new
  if acct_groups[-1].length == 1
    leftovers = acct_groups[-2].pop(2).push
    leftovers.each {|x| acct_groups[-1].push x}
  elsif acct_groups[-1].length == 2
    leftovers = acct_groups[-2].pop(1).push
    leftovers.each {|x| acct_groups[-1].push x}
  end
  return acct_groups
end

#refactored
def sort_groups(students)
  groups = students.each_slice(5).to_a
  if groups[-1].length <= 2
    groups[-2].pop(2).each {|x| groups[-1].push x}
  end
  return groups
end

p sort_groups(students)

=begin
What was the most interesting and most difficult part of this challenge?

The most difficult AND interesting part of this challenge was figuring out what to tell the code to do in the case where the student list isn't easily divisible.  It's fairly simple to define a method that sorts an array into smaller arrays of a given length, but then you're left with an array that's too short.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, but slowly.  It's still hard for me to think small enough to consider each step from the computer perspective.  I feel I know what I want the computer to do but can't figure out how to get it to do it, until I realize I don't actually know exactly what I need the computer to do.  Recognizing the jumps in logic that I'm making is tricky, and then transferring that knowledge into additional/revised pseudocode/code is additionally tricky.

Was your approach for automating this task a good solution? What could have made it even better?

If I could have figured out a way to make no groups of 3 and as few groups of 4 as possible, that would probably be best.  I could have also had the method store the ouput and use that to optimize the diversity of the groups; for example, trying as best as possible to as many new people in each new group as possible.

What data structure did you decide to store the accountability groups in and why?

An array, I couldn't figure out a way to push group numbers as keys into a hash, though, this probably would have made for better code.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I didn't use any different methods from initial to refactoring but I figured out a more efficient syntax where I repeated myself less and shortened my code quite a bit.
=end