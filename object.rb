# We create an object by defining a class and instantiating it by using the .new method
# A module allows us to group reusable code into one place.
module Speak 
  def speak(sound)
    puts "{sound}"
  end 
end

class GoodDog 
  include Speak 
end

class HumanBeing
  include Speak 
end 

sparkyy = GoodDog.new
sparkyy.speak("Arf!") #=> Arf!

bob = HumanBeing.new 
bob.speak("Hello!") #=> Hello!

puts "---GoodDog ancestor---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestor"
puts HumanBeing.ancestors


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
    @name = name # Instance variable
  end
end

sparkys = AnotherGoodDogo.new("Sparky")



