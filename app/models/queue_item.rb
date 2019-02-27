class QueueItem
  attr_accessor :rating
  attr_reader :viewer, :movie
  @@items = []

  def initialize(movie,viewer,rating=nil)
    @movie = movie
    @viewer = viewer
    @rating = rating
    @@items << self
  end

  def self.all
    @@items
  end

end


### `QueueItem`

#_A `QueueItem` object represents that an individual user has added a particular
#movie to their queue, and possibly rated it. **It is not the full queue, but a
#single item in the queue.**_

#+ `QueueItem.all`
#  + returns an array of all `QueueItem`s WORKS!!!

#+ `QueueItem#viewer`
#  + returns the viewer associated with this `QueueItem` WORKS !!!

#+ `QueueItem#movie`
#  + returns the movie associated with this `QueueItem` WORKS!!!

#+ `QueueItem#rating`
#  + returns the rating for this `QueueItem`. If the viewer has not yet rated
# the movie, `QueueItem#rating` should be `nil` WORKS!!!
