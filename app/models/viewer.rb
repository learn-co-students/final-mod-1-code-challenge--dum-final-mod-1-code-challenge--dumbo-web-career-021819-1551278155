class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select{|item| item.viewer == self}
  end

  def queue_movies
    queue_items.map {|item| item.movie}
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    bool = false
    queue_items.map do |item|
      if item.movie == movie
        item.rating = rating
        bool = true
      end
    end
    if bool == false
      QueueItem.new(self, movie, rating)
    end
  end

  def self.all
    @@all
  end

end
