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
    QueueItem.all.select {|queue| queue.movie == self}
  end

  def viewers
    queue_items.map {|queue| queue.viewer}
  end

  def average_rating
    nil_counter = 0
    total = 0
    queue_items.each do |queue|
      if queue.rating == nil
        nil_counter += 1
      else
        total += queue.rating
      end
    end
    if nil_counter == queue_items.length
      puts "No ratings yet for this movie"
      return 0
    end

    average = (total/(queue_items.length-nil_counter).to_f).round(2)
    return average
  end

  def self.highest_rated
    @@all.max{|movie1, movie2| movie1.average_rating <=> movie2.average_rating}
  end

end
