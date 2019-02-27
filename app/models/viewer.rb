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

  def queue_items #array with items in Queue that belong to viewer
    QueueItem.select {|item|
      item.viewer == self
    }
  end

  def queue_movies #array with movieINST belong to viewer
    queue_items.map {|viewers_item|
      viewers_item.movie
    }
  end

  def add_movie_queue(movie)
    newMovie = QueueItem.new(self, movie, rating)
    newMovie
  end

  def rate_movie(movie, rating) #if movie no in viewer queue, add new queueitemINST, if so change rating
    if queue_movies.include?(movie) == false
      new_movie = QueueItem.new(self, movie, rating)
      new_movie
    else
      movie_we_want = queue_movies.select{|movie_inst|
        movie_inst == movie
      }

      movie_we_want[0].rating = rating
    end

  end

  # + `Viewer#rate_movie(movie, rating)`
  #   + given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's `QueueItem` for that movie. If the movie is not already in the viewer's queue, this method should add a new `QueueItem` with the viewer, movie, and rating. If the movie is already in the queue, this method should not create a new `QueueItem`.

end
