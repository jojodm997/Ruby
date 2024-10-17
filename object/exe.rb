class Dog 
  def initialize(name)
    @name = name
  end

  def bark 
    return "Ruff ruff"
  end
end

dog = Dog.new("fido")

puts dog.bark


class Insect 
  def initialize(age_in_days)
    @age_in_days = age_in_days
  end

  def age_in_years() 
    return @age_in_days.to_f / 365 
  end
end


class Lamp 
  def self.about_me
    return "We brighten up people's lives"
  end
end


class WaterBottle 
  def initialize(size)
    @size = size
  end

  def size
    return @size
  end
end

klean_kanteen = WaterBottle.new(24)
klean_kanteen.size()


class Person 
  def initialize(age)
    @age = age 
  end

  def age=(new_age)
    @age  = new_age
  end

  def age() 
    return @age
  end
end


module Clueless
  def funny()
    return "AS IF?!"
  end
end

class Actress 
  include Clueless
end

alicia = Actress.new 
alicia.funny()


module MathHelper 
  def multiply_by_two(num)
    num * 2
  end
end

class Homework
  include MathHelper
end

my_homework = Homework.new 
my_homework.multiply_by_two(4)

class Mammal 
  def heatbeat? 
    true 
  end
end

class Dog < Mammal 
end

class BaseballPlayer 
  def initialize(hits, walk, at_bats)
    @hits = hits 
    @walk = walk 
    @at_bats = at_bats
  end

  def battling_average() 
    return @hits.to_f / @at_bats
  end

  def on_base_percentage 
    return (@hits + @walk).to_f / @at_bats
  end
end

barry_bonds = BaseballPlayer.new(330, 110, 1125)
barry_bonds.battling_average()
barry_bonds.on_base_percentage()

class Person 
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name() 
    return(@first_name)
  end

  def last_name() 
    return(@last_name)
  end

  def full_name()
    return "#{first_name} #{last_name}"
  end
end

bob = Person.new("Bob", "Lob")
bob.full_name()


module MathHelpers
  def exponent(number, exponent)
    return(number ** exponent)
  end
end

class Calculator 
  include MathHelpers

  def square_root(number)
    return(exponent(number, 0.5))
  end
end

c = Calculator.new 
c.square_root(4)



class Viking 
  attr_accessor :name, :age, :health, :strength

  @@starting_health
  def initialize(name, age, health, strength)
    @name = name 
    @age = age 
    @health = health
    @strength = strength
  end

  def self.create_warrior(name)
    age = rand * 20 + 15 
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    Viking.new(name, health, age, strength)
  end

  def attack(enemy)
    
  end

  def take_damage(damage)
    self.health -= damage 
    self.shout("OUCH!")
  end

  def shout(str)
    puts str
  end

  def sleep 
    self.health += 1 unless health >= 99
  end

  def self.random_name
    ["Loki", "Muginn", "Huginn"].sample
  end

  def self.silver_to_gold(silver_pieces)
    silver_pieces / 10 
  end

  def gold_to_silver(gold_pieces)
    gold_pieces * 10
  end
end
