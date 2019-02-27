class QueueItem

  attr_accessor :username,:title,:movie,:rating
  @@all = []
  def initialize(username,title,movie,rating)
    @username = username
    @title = title
    @movie = movie
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end


  def viewer
    Viewer.select {|item| item.username == self }
  end

  def movie
    Movie.select{|item| item = item.self }
  end

  def rating
    rating = nil

  end


end
