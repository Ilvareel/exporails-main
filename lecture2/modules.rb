# Modules
#

module Allowable
  def allowed?
    !!allowed_at
  end
end

class User
  include Allowable

  attr_accessor :name, :allowed_at

  def initialize(name, allowed_at=nil)
    @name = name
    @allowed_at = allowed_at
  end
end

class Organization
  include Allowable

  attr_accessor :code, :allowed_at

  def initialize(code, allowed_at=nil)
    @code = code
    @allowed_at = allowed_at
  end
end

User.new('igor', Time.now).allowed? # true
User.new('igor', nil).allowed? # false
Organization.new('tron foundation', Time.now).allowed? # true
Organization.new('tron foundation', nil).allowed? # false

###

module Users
  class Profile
  end
end

Users::Profile
