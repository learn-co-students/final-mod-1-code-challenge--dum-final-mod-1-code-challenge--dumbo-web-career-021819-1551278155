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
    QueueItem.all.select {|queue| queue.movie == self}
  end

  def viewers
    queue_items.map {|que| que.viewer}
  end

  def average_rating
    sum = 0
    i = 0
    avg = 0
    QueueItem.all.map do |queue|
      sum += queue.rating
      i += 1
    end
    avg = sum / i
  end



end

# + `Movie#average_rating`
#   + returns the average of all ratings for this instance of `Movie`
# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating
