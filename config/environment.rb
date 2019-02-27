require 'bundler/setup'
Bundler.require
require_rel '../app'

mummy = Movie.new("The Mummy")
lotr = Movie.new("Lord of the Rings")
harry = Movie.new("Harry Potter")

chris = Viewer.new("Chris")
wendy = Viewer.new("Wendy")
irene = Viewer.new("Irene")

chris_rating = QueueItem.new(chris, lotr)

p chris.queue_items
