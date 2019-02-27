require_relative 'Viewer.rb'
require_relative 'movie.rb'

class QueueItem

  attr_reader :user, :film

  @@all = []

  def initialize(user, film)
   @user = user
   @film = film
   @@all << self
  end

  def viewer
    @@all.select do |queue|
      queue.user == self.user
    end.map do |
  end

  def movie
    @@all.select do |queue|
      queue.film == self.film
    end.map do |queue|
      queue.film
    end
  end

  def self.all
    @@all
  end

end


vytautas = Viewer.new("Vytautas")
carlos = Viewer.new("Carlos")
scarface = Movie.new("Scarface", 5)
raging_bull = Movie.new("Raging Bull", 4)
c_queue = QueueItem.new(carlos,raging_bull)
v_queue = QueueItem.new(vytautas,scarface)
red = Movie.new("Red", 3)
# p vytautas.queue_items
# p carlos.queue_items
# p vytautas.queue_movie
# p carlos.queue_movie
# vytautas.add_movie_to_queue(red)
# vytautas.queue_items
p v_queue.movie
