# Exceptions
#

begin
  [1,2,3,4,5].to_h
rescue => exception
  puts exception
ensure
  puts '...'
end

# wrong element type Integer at 0 (expected array)
# ...

variable = [1,2,3,4,5]
begin
  variable.to_h
rescue => exception
  puts exception
  variable = [[1,2],[3,4]]
  retry
end

# wrong element type Integer at 0 (expected array)
#  => {1=>2, 3=>4}

begin
  puts 1
  raise StandardError
  puts 2
rescue => exception
  puts exception
end

# 1
# StandardError
