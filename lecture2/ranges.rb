# Ranges
#
# https://ruby-doc.org/core-3.0.1/Range.html

range1 = (1..5)
range2 = (1...5)

range1.to_a # [1, 2, 3, 4, 5]
range2.to_a # [1, 2, 3, 4]

range1.step(2).each{|i| puts i }

# 1
# 3
# 5

range1.first # 1
range1.last # 5
range1.include? 100 # false
