# I worked on this challenge with Jasmeet Chatrah.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a <= 0  || b <= 0 || c <= 0
    puts false
  elsif a + b > c && a + c > b && b + c > a
    puts true
  else
    puts false
  end
end