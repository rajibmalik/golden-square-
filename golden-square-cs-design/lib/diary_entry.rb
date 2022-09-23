class DiaryEntry
  def initialize(title, contents)
    # initilaises with a title and a contents representing strings 
    @title = title 
    @contents = contents 
  end 
  
  def title
    # returns the title representing a string
    return @title 
  end 
  
  def contents
    # returns the contents represntings a string
    return @contents
  end 
end 