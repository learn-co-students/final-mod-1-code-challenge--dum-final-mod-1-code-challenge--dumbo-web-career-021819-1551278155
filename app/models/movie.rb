class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end
#Movie.all, returns an array of all Movie
  def self.all
    @@all
  end

#Movie#queue_items, returns an array of all the QueueItem instances that contain this movie
  def queue_items
    QueueItem.all.select{|queue| queue.viewers == self }
  end

#Movie#viewers, returns an array of all of the Viewers with this Movie instance in their queue
  def viewers
    Viewers.all.each {|queue| queue.viewers}
  end

#Movie#average_rating, returns the average of all ratings for this instance of Movie
  def average_rating
    rating = 0
    queuelist = queue_items.map do |queue|
      rating += queue.average
      rating /= queuelist.size
  end

end
#Movie.highest_rated, returns the instance of Movie with the highest average rating
  def self.highest_rated

end
