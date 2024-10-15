require "time"
class Person  
  attr_accessor :name, :age, :sex, :birth_date, :birth_place, :death_date

  def Person.load_with_info(n, bdate, ddate=nil)
    a = Person.new 
    a.name = n 
    a.birth_date = bdate 
    a.death_date = ddate 
    return a
  end

  def alive? 
    death_date.nil?
  end
  
  def age 
    ((alive? ? Time.now : Time.parse(death_date)) - Time.parse(birth_date)).to_i / 60 / 60 / 24 / 365
  end
end

class Actor < Person 
  attr_accessor :filmography
end

class Writter < Person 
  attr_accessor :published_works
end

an_actor = Actor.new
an_actor.name = "Paul Newman"
an_actor.birth_date = "1925-01-26"
an_actor.death_date = "2008-12-26"
an_actor.age = 83
an_actor.filmography = ["Cool Hand Luke", "Butch Cassidy and the Sundance Kid"]

puts an_actor.inspect
#=> #<Actor:0x100189ec0 @filmography=["Cool Hand Luke", "Butch Cassidy and the Sundance Kid"], @age=83, @name="Paul Newman">

an_actress = Actress.new
an_actress.name = "Catherine Keener"
an_actress.age = 52
an_actress.filmography = ["Being John Malkovich", "Capote"]

puts an_actress.inspect   
#=> #<Actress:0x100188b60 @age="52", @name="Catherine Keener", @filmography=["Being John Malkovich", "Capote"]>
