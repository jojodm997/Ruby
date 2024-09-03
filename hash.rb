my_hash = { 
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}

my_hash = Hash.new
my_hash #=> {}

hash = { 9 => "nine", :six => 6}

shoes = { 
  "summer" => "sandals",
  "winter" = "boots"
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

