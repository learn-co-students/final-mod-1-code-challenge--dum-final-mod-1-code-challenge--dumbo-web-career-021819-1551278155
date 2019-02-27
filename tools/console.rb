require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

meredith = Viewer.new("meredith")
jael = Viewer.new("jael")

right_thing = QueueItem.new(jael, "Do the Right Thing", 4)

rafiki = Movie.new("Rafiki")

watch_rafiki = QueueItem.new(meredith, rafiki)

titanic = QueueItem.new(meredith, "Titanic", 3)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
