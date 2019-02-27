require 'pry'
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
    self.queue_items.map do |item|
      item.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie, rating)
  end

  def rate_movie(movie, rating)
      movie_arr = self.queue_items.map do |item|
        item.movie
      end
      self.queue_items.each do |item|
        if movie_arr.include?(movie)
          item.rating = rating
        else
          QueueItem.new(self, movie, rating)
        end
      end
  end
  # binding.pry


end
