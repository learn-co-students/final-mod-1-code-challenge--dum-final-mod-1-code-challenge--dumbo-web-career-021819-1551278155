class QueueItem

  attr_reader :viewer
  attr_accessor :rating, :movie

  @@all = []

  def initialize(viewer, movie, rating=nil)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all.push(self)
  end

  def self.all
    @@all
  end

end
