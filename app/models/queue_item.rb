class QueueItem
  attr_accessor :rating, :viewer, :movie

  @@all = []

  def initialize(rating, viewer, movie)
      @rating = rating
      @viewer = viewer
      @movie = movie
      @@all << self
  end
    
  def self.all
      @@all
  end
    

end


#                                      _A `QueueItem` object represents that an individual user has added a particular movie to their queue, and possibly rated it. **It is not the full queue, but a single item in the queue.**_

#                                       + `QueueItem.all`
#                                       + returns an array of all `QueueItem`s

# + `QueueItem#viewer`
#   + returns the viewer associated with this `QueueItem`
# + `QueueItem#movie`
#   + returns the movie associated with this `QueueItem`
# + `QueueItem#rating`
#   + returns the rating for this `QueueItem`. If the viewer has not yet rated the movie, `QueueItem#rating` should be `nil`