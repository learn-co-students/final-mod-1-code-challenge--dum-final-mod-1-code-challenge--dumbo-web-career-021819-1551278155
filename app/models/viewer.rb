class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue|
      queue.viewer == self
      end
  end

  def queue_movies
    queue_items.map {|queue| queue.movie}
  end

  def add_movie_to_queue(movie)
    queue_movies << movie
  end

  def rate_movie(movie, rating)
    queue_items.each do |queue|
      if queue.movie == self
        queue.rating = rating
      else
        QueueItem.new(self, movie, rating)
      end
    end
  end
  # + `Viewer#rate_movie(movie, rating)`
  #   + given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's `QueueItem` for that movie. If the movie is not already in the viewer's queue, this method should add a new `QueueItem` with the viewer, movie, and rating. If the movie is already in the queue, this method should not create a new `QueueItem`.

end
