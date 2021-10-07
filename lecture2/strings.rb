# STRINGS
#
# https://ruby-doc.org/core-3.0.1/String.html

str1 = 'My name is '
str2 = "Igor"
str3 = "Newline\nHere"

puts str1, str2, str3

puts "#{str1}#{str2}" # My name is Igor

str2.size # 4
str2.length # 4

str2[0] # I
str2[0..1] # Ig

puts "string".object_id, "string".object_id # different

str2.upcase # IGOR
str2.downcase # igor

str2.split('') # ["I", "g", "o", "r"]
str2.chars # ["I", "g", "o", "r"]
str1.split # ["My", "name", "is"]

str4 = "apple banana apple"
str4.gsub('apple', 'plum') # "plum banana plum"
str4 # "apple banana apple"
str4.gsub!('apple', 'plum') # "plum banana plum"
str4 # "plum banana plum"

" name ".strip # "name"

str2.end_with? 'r' # true
str2.start_with? 'I' # true

str2.reverse # rogI

str2.to_sym # :Igor
