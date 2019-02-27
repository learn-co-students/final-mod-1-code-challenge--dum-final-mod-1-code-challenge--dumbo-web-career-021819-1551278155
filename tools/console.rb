require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spiderverse = Movie.new("Spiderverse")
avengers = Movie.new("End Game")
tarzan = Movie.new("Tarzan")
marvel = Movie.new("Captain Marvel")

simon = Viewer.new("Simon")
danny = Viewer.new("Nathaniel")
wesley = Viewer.new("Weasels")

queue1 = QueueItem.new(simon, spiderverse)
queue2 = QueueItem.new(simon, tarzan, 9)
queue3 = QueueItem.new(simon, avengers, 9)
queue4 = QueueItem.new(danny, spiderverse, 8)
queue5 = QueueItem.new(danny, avengers, 10)
queue6 = QueueItem.new(wesley, avengers, 10)

# Tests for Viewer class
# p Viewer.all
# p "**************"
# p simon.queue_items
# p "**************"
# p simon.queue_movies
# p "**************"
# p simon.add_movie_to_queue(marvel)
# p "**************"
# p simon.rate_movie(marvel, 10)

# Tests for QueueItem class
# p QueueItem.all
# p "**************"
# p queue1.viewer
# p "**************"
# p queue2.movie
# p queue1.rating

# Tests for Movie class
p Movie.all
p "**************"
p tarzan.queue_items
p "**************"
p tarzan.viewers
p "**************"
p marvel.average_rating
p "**************"
p Movie.highest_rated

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
