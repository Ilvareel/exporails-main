# SYMBOLS
#
# https://ruby-doc.org/core-3.0.1/Symbol.html

sym1 = :symbol

sym1.size # 6
sym1.length # 6

puts :symbol.object_id, :symbol.object_id # the same

sym1.to_s # 'symbol'

sym1.upcase # :SYMBOL
:SYMBOL.downcase # :symbol
