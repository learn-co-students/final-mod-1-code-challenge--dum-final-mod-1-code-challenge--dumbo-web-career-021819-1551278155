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
    QueueItem.all.select { |q| q.viewer == self }
  end

  def queue_movies
    queue_items.map(&:movie)
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def get_queueitem_by_movie(movie)
    queue_item = queue_items.find { |q| q.movie == movie }
    queue_item ||= add_movie_to_queue(movie)
    queue_item
  end

  def rate_movie(movie, rating)
    queue_item = get_queueitem_by_movie(movie)
    queue_item.rating = rating
    queue_item
  end
end
