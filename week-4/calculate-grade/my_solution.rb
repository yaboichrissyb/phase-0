
# Calculate a Grade

# I worked on this challenge Jasmeet Chatrah.


# Your Solution Below
def get_grade (percent)
  if percent.to_s >= '90'
    puts 'A'
  elsif percent.to_s >= '80'
    puts 'B'
  elsif percent.to_s >= '70'
    puts 'C'
  elsif percent.to_s >= '60'
    puts 'D'
  else
    puts 'F'
  end
end
