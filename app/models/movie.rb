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
    QueueItem.all.select do |queue|
      queue.movie == self
      end
  end

  def viewers
    queue_items.map {|queue| queue.viewer}
  end

  def average_rating
    array = queue_items.map {|queue| queue.rating}
    array.inject(0.0) { |sum, el| sum + el } / array.size
  end

  def self.highest_rated
    inst = QueueItem.all.sort_by{|queue| queue.rating}.last
    inst.movie
  end

end
