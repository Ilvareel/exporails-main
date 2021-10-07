# Arrays
#
# https://ruby-doc.org/core-3.0.1/Array.html

array1 = [1,2,3,4,5]
array2 = [1,nil,:symbol,'string']

array1.each_with_index do |item, index|
  puts "Item: #{item} | Index: #{index}"
end

# Item: 1 | Index: 0
# Item: 2 | Index: 1
# Item: 3 | Index: 2
# Item: 4 | Index: 3
# Item: 5 | Index: 4

array1[0] # 1
array1.first # 1
array1[-1] # 5
array1.last # 5
array1[0..2] # [1, 2, 3]
array1.first 3 # [1, 2, 3]

array1.any?{|i| i == 1 } # true
array1.all?{|i| i % 2 == 0 } # true

array2.compact # [1, :symbol, "string"]

[].empty? # true
array1.empty? # false
[].present? # false
array1.present? # true

array1.size # 5
array1.length # 5

[[1,2,3], [4,5,6]].flatten # [1, 2, 3, 4, 5, 6]

[1,2,2,3,1].uniq # [1,2,3]

array1.sum # 15

array1.shuffle # who knows ? :D

array1.reverse # [5,4,3,2,1]

[1,2,2,3,1].sort # [1, 1, 2, 2, 3]

array1.push(6) # [1, 2, 3, 4, 5, 6] 
array1.append(7) # [1, 2, 3, 4, 5, 6, 7]
array1.prepend(0) # [0, 1, 2, 3, 4, 5, 6, 7]

array1.min # 0
array1.max # 7

array1.join(' ') # "0 1 2 3 4 5 6 7"

array1.select{|item| item > 5 } # [6, 7]

[[1,2], [3,4]].to_h # {1=>2, 3=>4}
{1=>2, 3=>4}.to_a # [[1,2], [3,4]]
