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
    queue_items.map do |item|
      item.viewer
    end
  end

  def average_rating
    sum = 0
    queue_items.map do |item|
      sum += item.rating
    end
    return sum / queue_items.size
  end

  def self.highest_rated
    highest_avg_movie = nil
    highest_avg_rating = 0
    QueueItem.all.map do |item|
      if item.rating > highest_rating
        highest_
      end
    end
  end

end
