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
    QueueItem.all.select {|item| item.viewer == self}
  end

  def queue_movies
    queue_items.map {|item| item.movie}
  end

  def add_movie_to_queue(movie, rating = nil)
    QueueItem.new(self, movie, rating)
  end

  def rate_movie(movie, rating)
    if queue_movies.include?(movie)
      queue_items.find {|item| item.viewer == self}.rating = rating
    else
      add_movie_to_queue(movie, rating)
    end
  end

end
