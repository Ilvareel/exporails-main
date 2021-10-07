# Hashes
#
# https://ruby-doc.org/core-3.0.1/Hash.html

hash1 = { a: 10, b: 20, c: 30 }
hash2 = { :a => 10, :b => 20, :c => 30 }

hash1[:c] # 30

hash2.each do |key,value|
  puts "Key: #{key} => Value: #{value}"
end

# Key: a => Value: 10
# Key: b => Value: 20
# Key: c => Value: 30

hash2.any?{|key,value| value.odd? } # false
hash2.all?{|key,value| value.is_a?(Numeric) } # true

{ a: 1,b: 2,c: nil }.compact # {:a=>1, :b=>2}

hash1.fetch(:a) # 10
hash1.fetch(:z, 10) # 10

hash1.keys # [:a, :b, :c]
hash1.values # [10, 20, 30]

hash1.has_key?(:c) # true
hash1.has_value?(:c) # false

{ a: 1 }.merge({ b: 2 }) # {:a=>1, :b=>2}

hash1.transform_keys{|key| key.to_s } # {"a"=>10, "b"=>20, "c"=>30}
hash1.transform_values{|value| value ** 2 } # {:a=>100, :b=>400, :c=>900}
