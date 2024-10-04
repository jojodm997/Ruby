# Encapsulation is one of the fundamental concepts of object-oriented programming. At its core, encapsulation describes the idea of bundling or combining the data and the operations that work on that data into a single entity, e.g., an object.

# Polymorphism is the ability for different types of data to respond to a common interface. For instance, if we have a method that invokes the move method on its argument, we can pass the method any type of argument as long as the argument has a compatible move method.

# The concept of inheritance is used in Ruby where a class inherits -- that is, acquires -- the behaviors of another class, referred to as the superclass.

class GoodCat 
end 

bobi = GoodCat.new


module Speak 
  def speak(sound)
    puts sound 
  end 
end

class GoodCats
  include Speak 
end

class HumanBeing 
  include Speak 
end

nyan = GoodCats.new 
nyan.speak("Meow") #=> Meow
bob = HumanBeing.new 
bob.speak("Hello!") #=> Hello!





