require "track"

RSpec.describe Track do 
  it "Returns matches when given a keyword in the title" do 
  track = Track.new("title_1", "artist_1")
  expect(track.matches?("title_1")).to eq true
  end 
  
  it "Returns matches when given a keyword in the artist" do 
  track = Track.new("title_1", "artist_1")
  expect(track.matches?("artist_1")).to eq true
  end 
  
  it "Neither title or aritst matches the keyword" do 
    track = Track.new("title_1", "artist_1")
    expect(track.matches?("title_2")).to eq false
  end 
end 