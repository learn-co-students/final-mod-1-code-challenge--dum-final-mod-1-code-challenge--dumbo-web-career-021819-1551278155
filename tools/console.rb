require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jane = Viewer.new("jane")
john = Viewer.new("john")
jill = Viewer.new("jill")
jacob = Viewer.new("jacob")

spiderman = Movie.new("Spider-Man")
thor = Movie.new("Thor")
batman = Movie.new("Batman")

monday_viewing = QueueItem.new(jane, spiderman, 5)
tuesday_viewing = QueueItem.new(jill, batman)
wednesday_viewing = QueueItem.new(john, thor, 2)
thursday_viewing = QueueItem.new(jacob, spiderman, 1)
friday_viewing = QueueItem.new(jane, thor, 5)
saturday_viewing = QueueItem.new(john, batman, 5)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
