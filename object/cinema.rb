class Cinema  
  attr_accessor :name, :location

  def initialize(name, location)
    @name = name 
    @location = location 
    @movies = []
  end
end

class Movie 
  attr_accessor :title, :showtime, :cinema 

  @@all = []

  def initialize(title, showtime)
    @title = tite 
    @showtime = showtime 
    @@all << self
  end

  def add_movie(movie)
    @movie << movie 
    movie.cinema = self
  end
end


