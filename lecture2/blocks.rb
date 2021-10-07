# Blocks
#

array = [1,2,3,4,5]

array.each do |item|
end

array.each{|item| }

#

def block_test
  puts 1
  puts yield
  puts 2
end

block_test do
  'value'
end

# 1
# value
# 2

def block_test2
  if block_given?
    yield
  else
    'No block...'
  end
end

block_test2 # 'No block...'

block_test2 do
  'block'
end

# 'block'
