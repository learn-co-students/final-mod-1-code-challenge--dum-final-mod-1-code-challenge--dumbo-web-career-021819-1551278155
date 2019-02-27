describe "movie.rb" do
  describe "#new" do
    it "creates a new movie" do
      titanic = Movie.new("Titanic")
      expect(titanic.title).to eq("Titanic")
    end
  end

  describe ".all" do
    it "returns all the movies" do
      titanic = Movie.new("Titanic")
      batman = Movie.new("Batman")

      expect(Movie.all).to include(titanic, batman)
    end
  end

  describe "#queue_items" do
    it "returns an array of all the QueueItem instances that contain this movie" do
      titanic = Movie.new("Titanic")
      batman = Movie.new("Batman")

      fredi = Viewer.new("Fredi")
      josh = Viewer.new("Josh")

      qi = QueueItem.new(fredi, titanic)
      qi2 = QueueItem.new(fredi, batman)
      qi3 = QueueItem.new(josh, batman)

      expect(batman.queue_items).to include(qi2, qi3)
    end
  end

  describe "#viewers" do
    it "returns an array of all of the Viewers with this Movie instance in their queue" do
      titanic = Movie.new("Titanic")
      batman = Movie.new("Batman")

      fredi = Viewer.new("Fredi")
      josh = Viewer.new("Josh")
      miguel = Viewer.new("Miguel")

      qi = QueueItem.new(fredi, titanic)
      qi2 = QueueItem.new(fredi, batman)
      qi3 = QueueItem.new(josh, batman)
      qi4 = QueueItem.new(miguel, titanic)

      expect(batman.viewers).to include(fredi, josh)
    end
  end

  describe "#average_rating" do
    it "returns the average of all ratings for this instance of Movie" do
      titanic = Movie.new("Titanic")

      fredi = Viewer.new("Fredi")
      josh = Viewer.new("Josh")
      miguel = Viewer.new("Miguel")

      qi = fredi.rate_movie(titanic, 5)
      qi2 = josh.rate_movie(titanic, 4)
      qi3 = miguel.rate_movie(titanic, 5)

      expect(titanic.average_rating).to eq(4.67)
    end
  end

  describe ".highest_rated" do
    it "returns the instance of Movie with the highest average rating" do
      titanic = Movie.new("Titanic")
      batman = Movie.new("Batman")
      hidden_figures = Movie.new("Hidden Figures")


      fredi = Viewer.new("Fredi")
      josh = Viewer.new("Josh")
      miguel = Viewer.new("Miguel")

      fredi.rate_movie(titanic, 5)
      josh.rate_movie(titanic, 4)
      miguel.rate_movie(titanic, 5)

      fredi.rate_movie(batman, 1)
      josh.rate_movie(batman, 2)
      miguel.rate_movie(batman, 1)

      fredi.rate_movie(hidden_figures, 5)
      josh.rate_movie(hidden_figures, 5)
      miguel.rate_movie(hidden_figures, 5)

      expect(Movie.highest_rated).to eq(hidden_figures)
    end
  end

end