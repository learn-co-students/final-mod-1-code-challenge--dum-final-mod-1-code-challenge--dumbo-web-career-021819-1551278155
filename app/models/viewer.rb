class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
      QueueItem.all.select{|item| item.username == self}
  end

  def queue_movies
    queue_items.collect{|item| item.movie}
  end



  def add_movie_to_queue(movie)

    # queue_movies << movie
    queue_movies.push(movie)


  end


  ### end of level 2


  def rate_movie(movie,rating)

  end


end
