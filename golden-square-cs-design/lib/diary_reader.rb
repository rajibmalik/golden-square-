class DiaryReader
  def initialize(wpm, diary)
    @wpm = wpm 
    @diary = diary
    # intialises with an instance of diary 
    # and wpm which is an integer representing the users readbale words per minute
  end 
  
  def find_best_readable_chunk(minutes)
    readable_entries = @diary.list_diary.reject do |entry|
    caclulate_reading_time(entry) > minutes
    end 
    readable_entries.max_by do |entry| 
      word_count(entry) 
    end 
    # minutes is an integer representing the 
    # number of minutes the user has to read
    # returns the most appropriate diary entry when compared to the users predicted 
    # reading time calculated using minutes and wpm 
  end
  
  private 
  
  def caclulate_reading_time(entry)
    word_count = entry.contents.split(" ").length 
    return (word_count / @wpm.to_f).ceil 
  end 
  
  def word_count(entry)
    entry.contents.split(" ").length 
  end 
end 