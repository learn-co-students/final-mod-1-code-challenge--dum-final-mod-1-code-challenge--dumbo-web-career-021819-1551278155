class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end



  def queue_items
    QueueItem.all.select{|item| item.title == self}
  end

  def viewers
    queue_items.collect{|item| item.username}
  end


  def average_rating
    sum = 0
    array_avg = 0
    average_rating =0
    array_avg = viewers.collect{|movie| sum = sum + movie.rating}

    average_rating = sum.to_f/array_avg.length
  end




  def self.highest_rating

  end

  def self.highest_rated

  end

end
