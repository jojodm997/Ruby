# We create an object by defining a class and instantiating it by using the .new method
# A module allows us to group reusable code into one place.
module Speak 
  def speak(sound)
    puts "{sound}"
  end 
end

class HumanBeing
  include Speak 
end 

bob = HumanBeing.new 
bob.speak("Hello!") #=> Hello!


module Study
end

class MyClass
  include Study 
end 

my_obj = MyClass.new


class GoodDogo
  def initialize
    puts "This object was initialize"
  end 
end

sparky = GoodDogo.new #=> "This object was initialize"


class AnotherGoodDogo
  def initialize(name)
    @dog_name = name # Instance variable
  end

  def speak 
    "#{@dog_name} says Arf!"
  end

  def get_name
    @dog_name 
  end

  def set_name=(name)
    @dog_name = name 
  end
end

sparkys = AnotherGoodDogo.new("Sparky")
puts sparkys.speak 
puts sparkys.get_name 
sparkys.set_name = "Spartacus"
puts sparkys.get_name

fido = AnotherGoodDogo.new("Fido")
puts fido.speak


class Engine 
  def start 
    puts "Engine starting..."
  end 
end


class Car 
  def initialize
    @engine = Engine.new # Engine instance is created when Car is created 
  end 

  def start 
    @engine.start 
  end
end

my_car = Car.new 
my_car.start # Engine is an integral part of car 


 # Composition: The container owns the contained objects, and their lifecycles are tightly linked.
# Aggregation: The container does not own the contained objects; they can exist independently.


