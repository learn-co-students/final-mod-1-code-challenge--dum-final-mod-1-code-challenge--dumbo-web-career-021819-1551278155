class Viewer
  attr_accessor :username
  @@viewers = []

  def initialize(username)
    @username = username
    @@viewers << self
  end

  def self.all
    @@viewers
  end

  def queue_items
    QueueItem.all.select do |item|
      item.viewer == self
    end
  end

  def queue_movies
    queue_items.map do |item|
      item.movie
    end
  end

  def add_movie_to_queue(movie)
    self.queue_items << QueueItem.new(movie, self)
  end

  #come back to this
  def rate_movie(movie, rating)
    ## DIDNT FINISH
  end



end


### `Viewer`

#+ `Viewer.all`
#  + returns all of the viewers WORKS !!!

#+ `Viewer#queue_items`
#  + this method should return an array of `QueueItem` instances associated with
#  this instance of `Viewer`. WORKS !!!

#+ `Viewer#queue_movies`
#  + this method should return an array of `Movie` instances in the `Viewer`'s
# queue. WORKS !!!

#+ `Viewer#add_movie_to_queue(movie)`
#  + this method should receive a `Movie` instance as its only argument and add
#  it to the `Viewer`'s queue WORKS !!!

#+ `Viewer#rate_movie(movie, rating)`
#  + given a movie and a rating (a number between 1 and 5), this method should
# assign the rating to the viewer's `QueueItem` for that movie. If the movie
# is not already in the viewer's queue, this method should add a new `QueueItem`
# with the viewer, movie, and rating. If the movie is already in the queue,
# this method should not create a new `QueueItem`.
