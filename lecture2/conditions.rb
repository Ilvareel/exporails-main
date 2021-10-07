# Conditions
#

if true
  puts 1
end

# 1

puts 1 if true # 1

if false
  puts 1
else
  puts 2
end

# 2

if false
  puts 1
elsif true
  puts 3
else
  puts 2
end

# 3

test = 5

case test
when 1
  :a
when 3
  :b
when 5,10
  :c
else
  nil
end

# c
