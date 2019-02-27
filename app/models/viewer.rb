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
    QueueItem.all.select {|queue| queue.viewer == self}
  end

  def queue_movies
    queue_items.map {|queue| queue.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    if find_movie_queue(movie) != false
      find_movie_queue(movie).rating = rating
    else
      add_movie_to_queue(movie)
      find_movie_queue(movie).rating = rating
    end
  end

  def find_movie_queue(movie)
    if queue_movies.include?(movie)
      queue_items.find {|queue| queue.movie == movie}
    else
      return false
    end
  end

end
