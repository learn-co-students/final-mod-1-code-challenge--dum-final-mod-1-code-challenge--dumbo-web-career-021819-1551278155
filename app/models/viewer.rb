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
    QueueItem.new(movie, self)
  end

  def rate_movie(movie, rating)
    queue_items.map do |item|
      if item.movie == movie
        item.rating = rating
      end

      if item.include?(movie) == false
        QueueItem.new(movie, self, rating)
      else
        break
      end
    end
  end


end
