class SongTracker
  def initialize
    @songs = [] 
  end
  
  def add(song)
    fail "A song name was not entered" if song == ""
    @songs << song 
  end 
  
  def list 
    return @songs
  end
  
  
end 


