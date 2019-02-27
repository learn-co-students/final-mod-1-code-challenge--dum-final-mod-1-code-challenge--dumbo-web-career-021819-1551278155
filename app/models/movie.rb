class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def queue_items
    QueueItem.all.select {|item| item.movie == self}
  end

  def viewers
    queue_items.map {|item| item.viewer}
  end

def average_rating
  queue_items.map {|item| item.rating.to_i}.inject {|sum, x| sum + x}.to_f / queue_items.size
end

 def self.highest_rated
   comp = 0
   best_film = 0
   all.each do |movie|
     if movie.average_rating > comp
       best_film = movie
       comp = movie.average_rating
     end
   end
   best_film
 end

def self.all
  @@all
end

end
