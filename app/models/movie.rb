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
    QueueItem.all.select {|item| item.movie == self}
  end

  def viewers
    queue_items.map {|item| item.viewer}
  end

  def average_rating
    (queue_items.map {|item| item.rating}.sum) / queue_items.length
  end

  def self.highest_rated
    @@all.map {|movie| movie.average_rating}
  end

end
