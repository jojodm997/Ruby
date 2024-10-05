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
  DOG_YEARS = 7 

  attr_accessor :name, :age 

  def initialize(n, a)
    self.name = n 
    self.age = a * DOG_YEARS
  end
end

nyan = GoodCats.new("Nyan", 6)
puts nyan.age #=> 42 



