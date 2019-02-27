require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

sadie = Viewer.new("sadie")
laura = Viewer.new("laura")
harrypotter = Movie.new("Harry Potter")
starwars = Movie.new("Star Wars")
twilight = Movie.new("Twilight")



item1 = QueueItem.new(sadie, harrypotter, 5)
item2 = QueueItem.new(sadie, starwars, 3)
item3 = QueueItem.new(laura, starwars, 2)
item4 = QueueItem.new(laura, twilight, 1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
