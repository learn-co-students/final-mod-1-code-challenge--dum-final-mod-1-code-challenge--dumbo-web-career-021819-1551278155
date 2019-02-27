require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jep = Viewer.new("Jep")
ayana = Viewer.new("Ayana")
matt = Viewer.new("Matt")
graham = Viewer.new("Graham")

superbad = Movie.new("Superbad")
lionking = Movie.new("Lion King")
avatar = Movie.new("Avatar")
mean_girls = Movie.new("Mean Girls")

netflix = QueueItem.new(jep, superbad, 3)
hulu = QueueItem.new(ayana, lionking, 4)
roku = QueueItem.new(matt, avatar, 4)
another_roku = QueueItem.new(jep, avatar, 5)
another_netflix = QueueItem.new(graham, mean_girls, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
