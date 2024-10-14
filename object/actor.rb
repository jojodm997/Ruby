class Actor 
  attr_accessor :name, :age, :sex, :birth_date, :birthplace, :filmography
end

an_actor = Actor.new
an_actor.name = "Paul Newman"
an_actor.age = 83
an_actor.filmography = ["Cool Hand Luke", "Butch Cassidy and the Sundance Kid"]

puts an_actor.inspect
#=> #<Actor:0x100189ec0 @filmography=["Cool Hand Luke", "Butch Cassidy and the Sundance Kid"], @age=83, @name="Paul Newman">

class Actress < Actor 
end

an_actress = Actress.new
an_actress.name = "Catherine Keener"
an_actress.age = 52
an_actress.filmography = ["Being John Malkovich", "Capote"]

puts an_actress.inspect   
#=> #<Actress:0x100188b60 @age="52", @name="Catherine Keener", @filmography=["Being John Malkovich", "Capote"]>
