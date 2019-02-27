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
    QueueItem.all.select { |q| q.movie == self }
  end

  def viewers
    queue_items.map(&:viewer)
  end

  def average_rating
    movies_with_ratings = queue_items.reject { |q| q.rating.nil? }

    # Change the array of movies to an array of their ratings
    # then reduce it down to one element by adding each rating
    # then divide this by the amount of movies with a rating
    # and round the float to 2 decimals.
    (movies_with_ratings.map(&:rating).reduce(:+).to_f / movies_with_ratings.size).round(2)
  end

  def self.movies_with_avg_ratings
    all.reject { |movie| movie.average_rating.nan? }
  end

  def self.highest_rated
    movies_with_avg_ratings.max_by(&:average_rating)
  end
end
