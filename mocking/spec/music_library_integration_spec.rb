require "track"
require "music_library"

RSpec.describe "integration" do
  it "Adds and lists tracks added to the library" do 
    music_library = MusicLibrary.new 
    track_1 = Track.new("artist_1", "track_1")
    track_2 = Track.new("artist_2", "track_2")
    track_3 = Track.new("artist_3", "track_3")
    music_library.add(track_1)
    music_library.add(track_2)
    music_library.add(track_3)
    expect(music_library.all).to eq [track_1, track_2, track_3] 
  end 
  
  it "Searches tracks by title and returns any matching tracks" do 
    music_library = MusicLibrary.new 
    track_1 = Track.new("one two", "three four")
    track_2 = Track.new("five six", "seven eight")
    track_3 = Track.new("nine ten", "eleven twelve")
    music_library.add(track_1)
    music_library.add(track_2)
    music_library.add(track_3)
    expect(music_library.search("two")).to eq [track_1]
  end 
end  