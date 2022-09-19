require "song_tracker"

RSpec.describe SongTracker do 
  context "Listing an empty list" do
    it "Returns an empty list" do
      song_tracker = SongTracker.new 
      expect(song_tracker.list).to eq [] 
    end 
  end 
  
  context "Adding a single song to the list" do
    it "Adds a song to the list" do
      song_tracker = SongTracker.new
      song_tracker.add("Changes")
      expect(song_tracker.list).to eq ["Changes"] 
    end 
  end 
  
   context "Adding two songs to the list" do
    it "Adds two songs to the list" do
      song_tracker = SongTracker.new
      song_tracker.add("Changes")
      song_tracker.add("Novacaine")
      expect(song_tracker.list).to eq ["Changes", "Novacaine"] 
    end 
  end 
  
  context "Entering an empty string when adding song" do
    it "fails" do
      song_tracker = SongTracker.new
      expect{song_tracker.add("")}.to raise_error "A song name was not entered"
    end 
  end 
  
end 