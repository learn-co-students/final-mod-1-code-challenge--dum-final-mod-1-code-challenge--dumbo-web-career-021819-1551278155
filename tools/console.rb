require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
matt = Viewer.new("Matthew")
tim = Viewer.new("Timothy")

cabin_fever = Movie.new("Cabin Fever")
close_calls = Movie.new("Close Calls")
bird_box = Movie.new("Bird Box")

matt_cabin_fever = QueueItem.new(cabin_fever, matt, 8)
tim_close_calls = QueueItem.new(close_calls, tim, 2)
tim_cabin_fever = QueueItem.new(cabin_fever, tim, 5)
matt_close_calls = QueueItem.new(close_calls, matt, 1)
matt_bird_box = QueueItem.new(bird_box, matt)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
