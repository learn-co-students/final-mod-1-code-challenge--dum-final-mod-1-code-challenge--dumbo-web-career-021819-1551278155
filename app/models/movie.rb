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
    QueueItem.all.select do |item|
      item.movie == self
    end
  end

  def viewers
    self.queue_items.map do |item|
      item.viewer
    end
  end

  def average_rating
    total = 0
    num_movie = self.queue_items.length
    self.queue_items.each do |item|
      total += item.rating
    end
    average = total / num_movie
    return average
  end

  def highest_rated
    big_rating = 0
    QueueItem.all.each do |item|
      movie_avg = item.movie.average_rating
      if movie_avg > big_rating
        big_rating = movie_avg
      end
    end
    QueueItem.all.each do |item|
      self.all.each do |movie|
        if item.movie == movie && item.movie.average_rating == big_rating
          return movie
        end
      end
    end
  end

end
