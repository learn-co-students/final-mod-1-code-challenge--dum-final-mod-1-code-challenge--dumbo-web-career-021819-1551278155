class Movie

  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items #arr all items in queue that equal to this movieINST
    QueueItem.select {|item|
      item.movie == self
    }
  end

  def viewers
    queue_items.map {|movies_item|
      movies_item.viewer
    }
  end

  def average_rating #returns avg rating for a movie
    arr_of_ratings = viewers.map {|viewers_movie_item|
      viewers_movie_item.rating
    }

    sum_of_ratings = arr_of_ratings.sum
    amount_of_ratings = arr_of_ratings.length

    return sum_of_ratings / amount_of_ratings.to_f
  end

  def self.highest_rated
    highest_movie = nil
    highest_rating = 0

    self.all.each {|movie_inst|
      if movie_inst.average_rating > highest_rating
        highest_rating = movie_inst.average_rating
        highest_movie = movie_inst
      end
    }

    return highest_movie
  end

end
