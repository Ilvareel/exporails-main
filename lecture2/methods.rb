# Methods
#

def full_name(first, last)
  "#{first} #{last}"
end

full_name 'Satoshi', 'Nakamoto' # 'Satoshi Nakamoto'
full_name # ArgumentError (wrong number of arguments (given 0, expected 2))

def full_name(first='Satoshi', last='Nakamoto')
  "#{first} #{last}"
end

full_name # 'Satoshi Nakamoto'
full_name 'Elon', 'Musk' # 'Elon Musk'

def full_name(first: 'Satoshi', last: 'Nakamoto')
  "#{first} #{last}"
end

def multiple
  return 1, 2, 3
end

multiple # [1, 2, 3]

###

def boolean?
  true
end

###

[:accepted, :rejected, :canceled].each do |status|
  define_method "#{status}?" do |s|
    status == s
  end
end

accepted? :accepted # true
rejected? :rejected # true
canceled? :canceled # true
accepted? nil # false
rejected? nil # false
canceled? nil # false
