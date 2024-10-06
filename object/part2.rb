def self.what_am_i # Class method definition
  "I'm a GoodCat class!"
end


class GoodCat 
  @@number_of_cats = 0

  def initialize 
    @@number_of_cats += 1 
  end

  def self.total_number_of_cats
    @@number_of_cats
  end
end

puts GoodCat.total_number_of_cats #=> 0 

cat1 = GoodCat.new 
cat2 = GoodCat.new

puts GoodCat.total_number_of_cats #=> 2 


class GoodCats 
  CAT_YEARS = 7 

  attr_accessor :name, :age 

  def initialize(n, a)
    self.name = n 
    self.age = a * CAT_YEARS
  end

  def to_s # overriding instance method (to_s) 
    "This cat's name is #{name} and it is #{age} in cat years"
  end 
end

nyan = GoodCats.new("Nyan", 6)
puts nyan.age #=> 42 

class Bar 
  attr_reader :xyz 

  def initialize 
    @xyx = { a:1, b:2 } 
  end

  def to_s 
    "I am Bar object"
  end 
end

bar = Bar.new 
puts bar # Prints I am a Bar object ! 
puts bar.xyz # Prints {:a=>1, :b=>2}


