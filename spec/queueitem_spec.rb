describe "queue_item.rb" do
  describe "#new" do
    it "creates a new queue item" do
      movie = Movie.new("Titanic")
      viewer = Viewer.new("Fredi")
      qi = QueueItem.new(viewer, movie)
      expect(qi.viewer).to eq(viewer)
    end
  end

  describe ".all" do
    it "returns all the queue items" do
      movie = Movie.new("Titanic")
      viewer = Viewer.new("Fredi")
      qi = QueueItem.new(viewer, movie)
      expect(QueueItem.all).to include(qi)
    end
  end

  describe "#viewer" do
    it "returns the viewer associated with this QueueItem" do
      movie = Movie.new("Titanic")
      viewer = Viewer.new("Fredi")
      qi = QueueItem.new(viewer, movie)
      expect(qi.viewer).to eq(viewer)
    end
  end

  describe "#movie" do
    it "returns the movie associated with this QueueItem" do
      movie = Movie.new("Titanic")
      viewer = Viewer.new("Fredi")
      qi = QueueItem.new(viewer, movie)
      expect(qi.movie).to eq(movie)
    end
  end

  describe "#rating" do
    it "returns the rating associated with this QueueItem" do
      movie = Movie.new("Titanic")
      viewer = Viewer.new("Fredi")
      qi = QueueItem.new(viewer, movie, 5)
      expect(qi.rating).to eq(5)
    end
  end
end