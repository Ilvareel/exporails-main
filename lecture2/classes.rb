# Classes
#

class Character
  def initialize(race)
    puts race
  end
end

instance = Character.new # ArgumentError (wrong number of arguments (given 0, expected 1))
instance = Character.new(:orc) # :orc

###

class Character
  def initialize(race=:human)
    puts race
  end
end

instance = Character.new # :human
instance = Character.new(:orc) # :orc

###

class Character
  attr_accessor :race, :armor

  def initialize(race=:human, armor)
    @race = race
    @armor = armor
  end
end

instance = Character.new(:orc, 100)
instance.race # :orc
instance.armor # 100

###

class Character
  attr_accessor :race, :armor

  def initialize(race=:human, armor)
    @race = race
    @armor = armor
  end

  def increase_armor(by=0)
    @armor += by
  end  
  
  def decrease_armor(by=0)
    @armor -= by
  end
end

instance = Character.new(:orc, 100)
instance.armor # 100
instance.increase_armor 10
instance.armor # 110

###

class Animal
  def is_human?
    false
  end
end

class Dog < Animal
  def sound
    'haf'
  end
end

class Werewolf < Animal
  def is_human?
    [true, false].shuffle.first
  end
end

dog = Dog.new
dog.is_human? # false
dog.sound # 'haf'

werewolf = Werewolf.new 
werewolf.is_human? # randomly

###

class MyClass
  # Anyone can call your public methods.
  def public_m
    1
  end

  def public_private_m
    private_m
  end  
  
  def public_protected_m
    protected_m
  end

  private # Only you can call your private methods

  def private_m
    2
  end

  protected # You can call your protected methods, or another member of your class (or a descendant class) can call your protected methods from the outside. Nobody else can.

  def protected_m
    3
  end
end

instance = MyClass.new
instance.public_m # 1
instance.private_m # NoMethodError (private method `private' called for #<MyClass:0x00007ff75e9d5280>)
instance.protected_m # NoMethodError (protected method `protected' called for #<MyClass:0x00007ff75e9d5280>)
instance.send(:private_m) # 2
instance.send(:protected_m) # 3
instance.public_private_m # 2
instance.public_protected_m # 3

###

class MyClass
  def metoda1
  end

  def self.metoda2
  end
end

MyClass.metoda1 # NoMethodError (undefined method `metoda1' for MyClass:Class)
MyClass.metoda2 # nil

instance = MyClass.new
instance.metoda1 # nil
instance.metoda2 # NoMethodError (undefined method `metoda2' for #<MyClass:0x00007ff75f14eb60>)

###

class MyClass
  $global_variable = 1
  @@class_variable = 0
  CONSTANT = [1,2,3]

  attr_accessor :instance_variable

  def initialize
    @instance_variable = 2
  end

  def self.metoda1
    local_variable = 3
    puts $global_variable
    puts local_variable
  end

  def self.metoda2
    puts local_variable
  end  
  
  def self.metoda3
    puts @@class_variable
  end

  # def self.metoda5
  #   CONSTANT2 = [1,2,3]
  # end
end

MyClass.metoda1 # 1 3
MyClass.metoda2 # NameError (undefined local variable or method `local_variable' for MyClass:Class)
MyClass.new.instance_variable # 2
MyClass.metoda3 # 0
MyClass::CONSTANT # [1,2,3]
