class Movie
  attr_accessor :title

  @@movies = []

  def initialize(title)
    @title = title
    @@movies << self
  end

  def self.all
    @@movies
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
    total_rating = 0
    queue_items.each do |item|
      if item.rating == nil
        # do nothing
      end
      item.rating = item.rating.to_f
      total_rating += item.rating
    end

    return total_rating / queue_items.count
  end

  def self.highest_rated
    no_nils = QueueItem.all.select do |item|
      item.rating != nil
    end

    lo_to_hi = no_nils.sort_by do |item|
      item.rating
    end

    hi_to_lo = lo_to_hi.reverse
    return hi_to_lo[0].movie
  end

end

#+ `Movie.all`
#  + returns an array of all `Movie` WORKS!!!

#+ `Movie#queue_items`
#  + returns an array of all the `QueueItem` instances that contain this movie
# WORKS !!!!

#+ `Movie#viewers`
#  + returns an array of all of the `Viewer`s with this `Movie` instance in
# their queue
# WORKS !!!

#+ `Movie#average_rating`
#  + returns the average of all ratings for this instance of `Movie` WORKS !!!


#+ `Movie.highest_rated`
#  + returns the instance of `Movie` with the highest average rating WORKS !!!
