my_hash = { 
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}

my_hash = Hash.new
my_hash #=> {}

hash = { 9 => "nine", :six => 6, 4.4234 => "forty four point something"}

shoes = { 
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"] #=> "sandals"
shoes["hiking"] #=> nil 
shoes.fetch("hiking") #=> KeyError: key not found: "hiking"
shoes.fetch("hiking", "hiking boots") #=>"hiking boots"

shoes["fall"] = "sneakers" #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}
shoes["summer"] = "flip-flops" #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}
shoes.delete("summer") #=> "flip-flops"
shoes #=> {"winter"=>"boots", "fall"=>"sneakers"}

books = { 
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakaeur"
}

books.keys #=> ["Infinite Jest", "Into the Wild"]
books.values #=> ["David Foster Wallace", "Jon Krakaeur"]

hash1 = { "a" => 100, "b" => 200}
hash2 = { "b" => 254, "c" => 300}
hash1.merge(hash2) #=> { "a" => 100, "b" => 254, "c" => 300}

# Rocket syntax
american_cars = { 
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}

# Symbols syntax 
japanese_cars = { 
  honda: "Accord",
  toyota: "Corrola",
  nissan: "Altima"
}

american_cars[:ford] #=> Mustang 
japanese_cars[:honda] #=> Accord 

person = {name: "bob", height: "6 ft", weight: "160 lbs", hair: "brown"}
person.each do |key, value|
  puts "Bob's #{key}, #{value}"
end

 # optional parameters
def greeting(name, option = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else 
    puts "Hi, my name is #{name} and I'm #{options[:age]}" + 
         "years old and i live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"}) 


