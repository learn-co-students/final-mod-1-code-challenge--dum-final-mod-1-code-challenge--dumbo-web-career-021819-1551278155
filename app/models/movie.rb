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

# Movie#queue_items
# returns an array of all the QueueItem instances that contain this movie

  def queue_items
    QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end
  end

# Movie#viewers
# returns an array of all of the Viewers
# with this Movie instance in their queue

  def viewers
    queue_items.collect do |queue_item|
      queue_item.viewer
    end
  end

# Movie#average_rating
# returns the average of all ratings for this instance of Movie

  def average_rating
    #
  end

# Movie.highest_rated
# returns the instance of Movie with the highest average rating

  def self.highest_rated
    #
  end

end
