describe "viewer.rb" do
  describe "#new" do
    it "creates a new viewer" do
      viewer = Viewer.new("Fredi")
      expect(viewer.username).to eq("Fredi")
    end
  end

  describe ".all" do
    it "returns all the viewers" do
      fredi = Viewer.new("Fredi")
      josh = Viewer.new("Josh")

      expect(Viewer.all).to include(fredi, josh)
    end
  end

  describe "#queue_items" do
    it "returns an array of QueueItems associated with this Viewer" do
      titanic = Movie.new("Titanic")
      batman = Movie.new("Batman")

      fredi = Viewer.new("Fredi")
      josh = Viewer.new("Josh")

      qi = QueueItem.new(fredi, titanic)
      qi2 = QueueItem.new(josh, batman)

      expect(fredi.queue_items).to eq([qi])
    end
  end

  describe "#queue_movies" do
    it "returns an array of Movie associated with this Viewer's queue" do
      titanic = Movie.new("Titanic")
      batman = Movie.new("Batman")

      fredi = Viewer.new("Fredi")
      josh = Viewer.new("Josh")

      qi = QueueItem.new(fredi, titanic)
      qi2 = QueueItem.new(josh, batman)

      expect(fredi.queue_movies).to eq([titanic])
    end
  end

  describe "#add_movie_to_queue" do
    it "receives a Movie instance as its only argument and add it to the Viewer's queue" do
      titanic = Movie.new("Titanic")
      batman = Movie.new("Batman")

      fredi = Viewer.new("Fredi")

      fredi.add_movie_to_queue(titanic)
      fredi.add_movie_to_queue(batman)

      expect(fredi.queue_movies).to eq([titanic, batman])
    end
  end

  describe "#rate_movie" do
    it "given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's QueueItem for that movie." do
      titanic = Movie.new("Titanic")
      fredi = Viewer.new("Fredi")

      rated_queue_item = fredi.rate_movie(titanic, 5)

      expect(rated_queue_item.rating).to eq(5)
    end
  end
end