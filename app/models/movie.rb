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
  	QueueItem.all.select do |item|
  		item.movie == self
  	end
  end

  def viewers
  	queue_items.map do |item|
  		item.viewer
  	end
  end

  def average_rating 
  	#find all of the ratings for this instance of the movie (#queue_items = .rating)
  	#total the ratings - inject? 
  	#count the ratings - length? 
  	#divide total by count - could the last three steps be one line? 
  	total_rating = queue_items.map do |movie|
  		movie.rating.to_f
  	end
  	total_rating.inject(0, :+) / total_rating.length
  	#what happens if there is no rating? nil cannot be calculated as a fixnum. || .to_i will convert nil to zero...integers will also round, so it is not a true average || .to_f will give a true average. 
  end

  def self.highest_rated
  #looks at all the movies average ratings. DONE 
  #compares to see who has the highest rating. DONE 
  #returns that INSTANCE - not the rating itself. 
  	highest = Movie.all.map do |movie|
  		movie.average_rating
  	end
  	 
  end


end

# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating

