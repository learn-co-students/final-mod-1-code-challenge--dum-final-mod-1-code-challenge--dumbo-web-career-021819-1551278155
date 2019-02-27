require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
james = Viewer.new('James')
pompeii = Movie.new('Pompeii')
oceans8 = Movie.new('Ocean\'s 8')
forest = Movie.new('Forest Gump')
james.add_movie_to_queue(pompeii)
puts 'VIEWER ------------------------------'
puts "1 - Viewer.all = #{Viewer.all}"
puts "2 - james.queue_items = #{james.queue_items}"
puts "3 - james.queue_movies = #{james.queue_movies}"
qi = james.add_movie_to_queue(oceans8)
puts "4 - james.queue_movies = #{james.queue_movies}"
james.rate_movie(pompeii, 5)
james.rate_movie(forest, 1)
puts "5 - james.queue_movies = #{james.queue_movies}"
puts "QUEUE ITEM -------------------"
puts "1 - QueueItem.all = #{QueueItem.all}"
puts "2 - qi.viewer.username = #{qi.viewer.username}"
puts "3 - qi.movie.title = #{qi.movie.title}"
puts "4 - qi.rating = #{qi.rating}"
james.rate_movie(oceans8, 3)
puts "4 - qi.rating = #{qi.rating}"
puts "MOVIE -----------------------------------"
puts "1 - Movie.all = #{Movie.all}"
puts "2 - pompeii.queue_items = #{pompeii.queue_items}"
puts "3 - pompeii.viewers = #{pompeii.viewers}"
puts "4 - pompeii.average_rating = #{pompeii.average_rating}"
ayana = Viewer.new('Ayana')
ayana.rate_movie(pompeii, 5)
puts "4 - pompeii.average_rating = #{pompeii.average_rating}"
puts "2 - pompeii.queue_items = #{pompeii.queue_items}"
puts "5 - Movie.highest_rated = #{Movie.highest_rated}"

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
