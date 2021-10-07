# Loops
#

5.times do
  puts 5
end

# 5
# 5
# 5
# 5
# 5

[1,2,3,4,5].each do |item|
  puts item ** 2
end

# 1
# 4
# 9
# 16
# 25

[1,2,3,4,5].each_with_index do |item, index|
  puts item if index % 2 == 0
end

# 2
# 4

count = 0
data = []
while count < 5
  data << count
  count+=1
end

data # [0, 1, 2, 3, 4]

until data.empty?
  data.pop
end

data # []

for value in [1,2,3,4,5] do
  puts value.to_f
end

# 1.0
# 2.0
# 3.0
# 4.0
# 5.0

[1,2,3,4,5].each do |item|
  next if item < 3
  puts item
end

# 3
# 4
# 5

[1,2,3,4,5].each do |item|
  break if item == 3
  puts item
end

# 1
# 2
