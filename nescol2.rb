data = [
  {"id"=>"1", "properties"=>{"name"=>"Google", "stock_symbol"=>"GOOG", "primary_role"=>"company"}},
  {"id"=>"2", "properties"=>{"name"=>"Facebook", "stock_symbol"=>"FB", "primary_role"=>"company"}}
]

data.each do |result|
  puts result["id"]
end 
#=> 1
#=> 2

data.each do |result|
  puts result["properties"]["name"]
end 
#=> Google
#=> Facebook 

data.each do |company| 
  company["properties"].delete("primary_role")
end 

=begin
[{"id"=>"1", "properties"=>{"name"=>"Google", "stock_symbol"=>"GOOG"}},
{"id"=>"2", "properties"=>{"name"=>"Facebook", "stock_symbol"=>"FB"}}]
=end

data.each do |company| 
  company["properties"]["industry"] = "Advertising/Privacy Invasion"
end 
=begin 
[
  {
    "id"=>"1", 
    "properties"=>{
      "name"=>"Google", 
      "stock_symbol"=>"GOOG", 
      "industry"=>"Advertising/Privacy Invasion"
    }
  },
  {
    "id"=>"2", 
    "properties"=>{
      "name"=>"Facebook", 
      "stock_symbol"=>"FB", 
      "industry"=>"Advertising/Privacy Invasion"
    }
  }
]
=end
