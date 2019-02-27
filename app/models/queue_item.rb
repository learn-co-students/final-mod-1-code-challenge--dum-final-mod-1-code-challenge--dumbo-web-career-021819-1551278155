class QueueItem

  @@all = []

  attr_accessor :rating, :viewer, :movie

  def initialize(viewer, movie, rating=nil)
    @viewer = viewer
    @movie = movie
    @rating = rating
    self.class.all << self
  end

  def self.all
    @@all
  end

end
