require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

avengers = Movie.new("Avengers")
clueless = Movie.new("Clueless")
mean_girls = Movie.new("Mean Girls")
jaws = Movie.new("Jaws")

dave = Viewer.new("Dave")
mel = Viewer.new("Mel")
john = Viewer.new("John")
sam = Viewer.new("Sam")

dave_queue = QueueItem.new(dave, avengers, 9)
mel_queue = QueueItem.new(mel, mean_girls)
john_queue = QueueItem.new(john, avengers, 8)
sam_queue = QueueItem.new(sam, clueless, 7)
sam_queue1 = QueueItem.new(sam, jaws, 6)
dave_queue1 = QueueItem.new(dave, jaws, 7)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
