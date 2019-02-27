#The user that watch the movie

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select {|queue| queue.viewer == self}
  end

  def queue_movie
    queue_items.map {|queue| queue.movie}
  end

  def add_movie_to_queue(movie)
    if !movie.is_a?(Movie)
      "Must be a Movie instance"
     else
       QueueItem.new(self,movie)
    end
  end

  def self.all
    @@all
  end

end
