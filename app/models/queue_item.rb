class QueueItem
	@@all = []
	attr_reader :viewer, :movie 
	attr_accessor :rating

    def initialize(viewer, movie, rating = 0)
    	@@viewer = viewer
    	@@movie = movie
    	@@rating = rating
    	@@all << self
    end


	def viewer
		self.all.find do |viewer|
			#fill code here
			binding.pry
		end
#returns the viewer associated with this `QueueItem`
	end

	def movie
		self.all.find do |movie|
			#fill code here
			binding.pry
		end
#returns the movie associated with this `QueueItem`
	end

	def rating
		self.find do |rating|
			#fill code here
			binding.pry
		end
#returns the rating for this `QueueItem`. If the viewer has not yet rated the movie, `QueueItem#rating` should be `nil`
	end



	def self.all
		@@all
	end


end


