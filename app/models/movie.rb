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
    QueueItem.all.select do |queue_instance|
      queue_instance.movie == self
    end
  end

  def viewers
    queue_items.map do |queue_item|
      queue_item.viewer
    end
  end

  def average_rating
    
  end

  def self.highest_rated

  end


end


#
# + `Movie#average_rating`
#   + returns the average of all ratings for this instance of `Movie`
#
#
# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating
