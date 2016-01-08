# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)

end

def my_hash_finding_method(source, thing_to_find)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)

end

def my_hash_modification_method!(source, thing_to_modify)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)

end

def my_hash_sorting_method(source)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |n| n.upcase.include?(thing_to_delete.upcase) }
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |n| n.upcase.include?(thing_to_delete.upcase) }
end

=begin
-Identify and describe the Ruby method(s) you implemented-
1.The main method I used to complete this challenge was the .delete_if method.  Even though there's no (!) pegged to the end, this one of the bang!/destructive/dangerous methods we've been hearing so much about; meaning, it modifies the object it's called upon.  In this case, it's called upon the source argument, which, for our purposes, can represent the i_want_pets array or the my_family_pets hash.  The delete_if method changes the objects within the array by removing them if they contain the thing_to_delete argument.  We can set this to an individual letter, a string, integer or whatever else we want to find and remove.  Similarly, you could use the .reject!, which, while more obviously named with the (!) pegged to the end, will return nil if it cannot find the thing_to_delete within the array or hash.  .delete-if will just return the array or hash unchanged if there is nothing for it to remove.
2. The second most important method I used would probably have to be .include? to find whether the object contained (included) the thing_to_delete.
3. The last method I used was the .upcase on both the individual objects within the array/hash and the thing_to_delete argument.  Going through and testing the method, I found that certain objects wouldn't get deleted if they started with a capital version of thing_to_delete.  For example, "Hoobie" and "Annabelle" would be deleted with the paramter "b", but not Bogart.  With .upcase added, all three are deleted.  If the user only wanted to delete Bogart, they could just input anything from "bo" to "Bogart" and "Bogart" would be removed.

-Teach your accountability group how to use the methods-
I'll stick to the .delete_if method for this part since you're probably all pretty familiar with the .upcase and .include? methods.  .delete_if is pretty straightforward and operates like and uses similar syntax as many other methods.  One important thing to keep in mind is that, even though it has no (!), it IS a destructive method.  So don't use it if you don't want to modify the object you attach it to.  If you want something that acts like .delete_if but is not destructive, try using .reject instead.  .delete_if iterates through your array/method and deltes each object for which the block evaluates as true.  In this case, the block checks whether each upcase object, n, includes the upcased thing_to_delete argument.  If the block does contain the thing_to_delete argument, .delete_if destructively removes the object from the source and returns the new, updated source.

-Share any tricks you used to find and decipher the Ruby Docs-
Once I figured out with pseudocode what I wanted my code to do, it wasn't too difficult to find these methods.  They have pretty semantic names/meanings (include,delete_if,reject), so I pretty much scanned through the methods in the ruby-docs hash and array pages and found these.  At first, I went with the .reject! method because it seemed more obviously destructive.  But, I saw the .reject entry linked to the .delete_if entry and vice versa.  After a more careful reading and some googling for examples I better understood the difference between the two and decided to go with .delete_if.

=end
# Person 5
def my_array_splitting_method(source)

end

def my_hash_splitting_method(source, age)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#