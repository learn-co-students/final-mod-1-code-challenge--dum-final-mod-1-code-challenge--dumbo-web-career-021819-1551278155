class Movie
  attr_accessor :title
  attr_reader :queue_items, :viewers, :average_rating
  @@highest_rated = []
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def viewers
  #returns an array of all of the `Viewer`s with this `Movie` instance in their queue
  QueueItem.all.select do |viewers|
  	#Fill code here
  	binding.pry
  end
  end

  def average_rating
  #returns the average of all ratings for this instance of `Movie`
  end


  def self.highest_rated
  #returns the instance of `Movie` with the highest average rating
  end

  def queue_items
  #returns an array of all the `QueueItem` instances that contain this movie
end

  def self.all
    @@all
  end

end


