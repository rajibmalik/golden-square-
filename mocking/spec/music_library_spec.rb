require "music_library"

RSpec.describe MusicLibrary do
  it "Adds and lists tracks" do
    music_library = MusicLibrary.new 
    track_1 = double :track  
    track_2 = double :track 
    track_3 = double :track 
    music_library.add(track_1)
    music_library.add(track_2)
    music_library.add(track_3)
    expect(music_library.all).to eq [track_1, track_2, track_3]
  end 
  it "Searches for tracks in library and returns matching" do 
    music_library = MusicLibrary.new 
    track_1 = double :track, matches?: true 
    track_2 = double :track, matches?: false 
    track_3 = double :track, matches?: false
    music_library.add(track_1)
    music_library.add(track_2)
    music_library.add(track_3)
    
    
  
    expect(music_library.search("two")).to eq [track_1]
  end 
end 