class QueueItem

  attr_accessor :viewer, :movie, :rating

  @@all = []

  def initialize(viewer, movie, rating = nil)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  # QueueItem.all
  # returns an array of all QueueItems

  def self.all
    @@all
  end

  # QueueItem#viewer
  # returns the viewer associated with this QueueItem

  # QueueItem#movie
  # returns the movie associated with this QueueItem

  # QueueItem#rating
  # returns the rating for this QueueItem.
  # If the viewer has not yet rated the movie, QueueItem#rating should be nil

  def rating
    @rating
  end

end
