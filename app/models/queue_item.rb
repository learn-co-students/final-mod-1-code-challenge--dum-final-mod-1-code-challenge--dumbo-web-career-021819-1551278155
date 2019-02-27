class QueueItem

@@all = []
  def initialize
    @movie = movie
    @viewer = viewer
    @rating = rating
    @@all << self
  end
#returns an array of all
  def self.all
    @@all
  end

end
