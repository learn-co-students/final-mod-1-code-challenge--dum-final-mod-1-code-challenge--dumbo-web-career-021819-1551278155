require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

siskel = Viewer.new("Gene Siskel")
ebert = Viewer.new("Rodger Ebert")
sherman = Viewer.new("Jay Sherman")

good_will_hunting = Movie.new("Good Will Hunting")
the_matrix = Movie.new("The Matrix")
beverly_hills_cop = Movie.new("Beverly Hills Cop")
jay_and_silent_bob = Movie.new("Jay and Silent Bob Strike Back")
higher_learning = Movie.new("Higher Learning")
golden_child = Movie.new("The Golden Child")

queue_item1 = QueueItem.new("10", siskel, good_will_hunting)
queue_item2 = QueueItem.new("9", ebert, the_matrix)
queue_item3 = QueueItem.new("7", sherman, beverly_hills_cop)
queue_item4 = QueueItem.new("2", siskel, jay_and_silent_bob)
queue_item5 = QueueItem.new("8", ebert, higher_learning)
queue_item6 = QueueItem.new("4", sherman, golden_child)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
