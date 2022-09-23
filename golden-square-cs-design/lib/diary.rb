class Diary
  def initialize
    @entries = []
    # constructs an empty array ready to store diary entries  
  end
  
  def add(entry) # entry is an instance of DiaryEntry representing a string
    # returns nothing 
    @entries << entry 
  end 
  
  def list_diary
    # returns a list of all stored diary entries
    return @entries 
  end 
end 