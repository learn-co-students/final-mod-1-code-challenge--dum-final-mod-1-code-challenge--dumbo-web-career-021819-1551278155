require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rushhour = Movie.new("RushHour")
fastandfurious = Movie.new("FastAndFurious")
americanpie = Movie.new("AmericanPie")

brianryu = Viewer.new("brianryu")
hsunice = Viewer.new("hsunice")
jtona = Viewer.new("jtona")
dannyjamz = Viewer.new("dannyjamz")

firstq = QueueItem.new(rushhour, brianryu, 5)
secondq = QueueItem.new(fastandfurious, brianryu, 5)
thirdq = QueueItem.new(americanpie, hsunice, 3)
fourthq = QueueItem.new(rushhour, jtona, 4)
fifthq = QueueItem.new(americanpie, dannyjamz, 4)

# brianryu.queue_items
# brianryu.queue_movies




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
