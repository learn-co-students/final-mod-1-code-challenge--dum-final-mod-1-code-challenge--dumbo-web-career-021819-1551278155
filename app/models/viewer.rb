class Viewer
  attr_accessor :username, :movie, :rating
  attr_reader :queue_items, :queue_movies, :add_movie_to_queue, :rate_movie

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def queue_items
#this method should return an array of `QueueItem` instances associated with this instance of `Viewer`.
    QueueItem.all.select do |queue_items|
    	binding.pry
  	#Fill code here
  end


  end

  def queue_movies
#this method should return an array of `Movie` instances in the `Viewer`'s queue.
    QueueItem.all.select do |movies|
    	binding.pry
  	#Fill code here
  end
  end

  def add_movie_to_queue(movie)
  	QueueItem.new(self,movie)
  	#complete
 #this method should receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue
  end

  def rate_movie(movie, rating)
  	testcase = self.queue_items.to_s
  	if testcase.include?(movie.title)
  		#code here
  	else
  		QueueItem.new(self,movie,rating)
  		#half complete
  	end


#given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's `QueueItem`
# for that movie. If the movie is not already in the viewer's queue, 
#this method should add a new `QueueItem` with the viewer, movie, and rating.
# If the movie is already in the queue, this method should not create a new `QueueItem`.
  end

  def self.all
    @@all
  end
  
end
