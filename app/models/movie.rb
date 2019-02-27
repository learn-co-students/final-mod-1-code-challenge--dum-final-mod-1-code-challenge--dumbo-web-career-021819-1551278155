

class Movie
  attr_accessor :title, :rating

  @@all = []

  def initialize(title, rating)
    @title = title
    @rating = rating
    self.class.all << self
  end

  def self.all
    @@all
  end

end
