class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |movies|
      movies.movie == self
      # + `Movie#queue_items`
#   + returns an array of all the `QueueItem` instances that contain this movie
    end
  end

  def viewers
      # + `Movie#viewers`
#   + returns an array of all of the `Viewer`s with this `Movie` instance in their queue
      queue_items.select do |viewer|
        viewer.viewer
      end
  end


# + `Movie#average_rating`
#   + returns the average of all ratings for this instance of `Movie`
  def average_rating
    QueueItem.all.select do |movie|
      movie.movie == self
    end.find do |rate|
      rate.rating
    end
  end


end

### `Movie`

# + `Movie.all`
#   + returns an array of all `Movie`


# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating
