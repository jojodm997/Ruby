class Animal 
  def speak 
    "Hello!"
  end 
end 

class Dog < Animal
  attr_accessor :name 
    
  def initialize(n)
    self.name = n
  end

  def speak 
    "#{self.name} says arf!"
  end
end 

class Cat < Animal 
end

class Snake < Animal 
  def speak 
    super + " from Snake class" # super invoke superclass 
  end
end

nyan = Cat.new 
bob = Dog.new("Bob") 
snake = Snake.new

puts snake.speak # Hello from Snake class 
puts nyan.speak #=> "Bob says arf!"
puts bob.speak #=> "Hello!"



module Swimmable 
  def swim 
    "I'm swimming"
  end 
end 

class Animal; end 

class Fish < Animal 
  include Swimmable # mixing in Swimmable moduke
end 

class Mammal < Animal 
end 

class Rabbit < Mammal 
end

class Otters < Mammal
  include Swimmable
end

neemo = Fish.new 
lala = Rabbit.new 
bob = Otters.new 

puts bob.swim #=> "I'm swimming"
puts neemo.swim #=> "I'm swimming"
puts lala.swim #=> Undefined method


module Mammal 
  class Dog 
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat 
    def say_name(name)
      p "#{name}"
    end
  end
end

buddy = Mammal::Dog.new 
kitty = Mammal::Cat.new 
buddy.speak("Arf!") #=> "Arf"
kitty.speak("Meow!") #=> "Meow!"


module Conversions 
  def self.farenheit_to_celsius(num)
    (num - 32) * 5 / 9
  end
end





