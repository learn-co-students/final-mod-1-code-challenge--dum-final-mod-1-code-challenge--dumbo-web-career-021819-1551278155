require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


josh = Viewer.new("josh_123")
shell = Viewer.new("shelly_123")
war_movie = Movie.new("War_Movie")
josh_que = QueueItem.new(josh, war_movie, 10)
shell_que = QueueItem.new(shell, war_movie, 2)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
