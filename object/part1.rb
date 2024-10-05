class GoodDog1
  def initialize
    puts "This object was initialized!"
  end
end

bob = GoodDog1.new #=> "This object was initialized!"

class GoodDog2 
  attr_accessor :name, :height, :weight #  This one line replaced two method definitions setter and getter. attr_accessor are instance method 

  def initialize(n, h, w)
    @name = n # instance variables
    @height = h 
    @weight = w
  end

  def speak 
    "#{name} says Arf!"
  end

  def change_info(n, h, w)
    self.name = n 
    self.height = h 
    self.weight = w
  end

  def info 
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

sparky = GoodDog2.new("Sparky", "12 inches", "10 lbs")
puts sparky.speak #=> "Sparky says Arf!"
puts sparky.name #=> Sparky 
puts sparky.info #=> Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.name #=> Spartacus 
puts sparky.info #=> Spartacus weighs 45 lbs and is 24 inches tall 

fido = GoodDog2.new("Fido")
puts fido.speak #=> "Fido says Arf!"

# In OOP languages, composition and aggregation are design principles used to establish relationships between classes. 


# Composition is a relationship where an object -- often called the container -- contains one or more objects of other classes as part of its state. In composition, the contained -- composed -- objects are tied directly to the container.

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
my_car.start # Engine is an integral part of Car 

# In this example, Car has an Engine, and Car instances contain an Engine object. When the Car is instantiated, the Engine is also instantiated. Likewise, when the Car object is destroyed, the composed Engine object is also destroyed.


# Aggregation is a form of association that is less tightly coupled than composition. Unlike composition, the lifetime of the contained objects does not depend on the lifetime of the container.

class Passenger 
end 

class Car 
  def initialize(passengers)
    @passengers = passengers # Passengers are given to the Car at creation
  end
end 

# Passengers can exist without Car 
passengers = [Passenger.new, Passenger.new]
my_car = Car.new(passengers)

# In this case, Car instances have a list of Passenger objects, but these Passenger objects can exist independently of the Car instance. They can be passed to the Car object when it's instantiated or any time before the Car instance is destroyed. However, the Passenger objects will continue to live on after the Car object is destroyed.


# The relationships between a container class instance and its composed and aggregated objects is implemented with instance variables. These instance variables hold references to other objects, enabling the container class to access and interact with the contained objects' methods and properties. 
 

# Composition: The container owns the contained objects, and their lifecycles are tightly linked.
# Aggregation: The container does not own the contained objects; they can exist independently.



