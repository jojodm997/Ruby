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
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n 
    @height = h 
    @weight = w 
  end

  def change_info(n, h, w)
    self.name = n 
    self.height = h 
    self.weight = w 
  end

  def speak 
    "#{name} says Arf!"
  end

  def info 
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end


sparkys = AnotherGoodDogo.new("Sparky", "12 inches", "10 lbs")
puts sparkys.info 

sparkys.change_info("Spartacus", "24 inches", "45 lbs")
puts sparkys.info

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

class MyCar 
  def initialize(year, model, color)
    @year = year 
    @model = model 
    @color = color 
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number 
    puts "You push the gas and accelerate #{number} mph"
  end 

  def brake(number)
    @current_speed -= number 
    puts "You push the brake and decelerate #{number} mph"
  end

  def current_speed
    puts "You are now going #{@current_speed} mph"
  end

  def shut_down 
    @current_speed = 0
    puts "Let's park this bad boy"
  end 
end


lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed

