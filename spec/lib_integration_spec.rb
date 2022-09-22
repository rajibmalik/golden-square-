require "lib_diary"
require "lib_diary_entry"

RSpec.describe "lib_integration" do 
  it "lists out the added diary entries" do 
    diary = Diary.new 
    diary_entry_1 = DiaryEntry.new("my title", "my contents")
    diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.all).to eq [diary_entry_1, diary_entry_2]
  end 
    
  describe "word counting beahviour" do
    it "returns the number of words in all diary entries" do 
      diary = Diary.new 
      diary_entry_1 = DiaryEntry.new("my title", "my contents")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 5
    end 
  end 
    
  describe "reading time beahviour" do 
    it "fails if the reading time is 0" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      diary.add(diary_entry)
      expect { diary_entry.reading_time(0) }.to raise_error "WPM cannot be 0 or less"
    end 
    
    it "Calculates the reading time for all entries where the time fits exactly" do 
      diary = Diary.new 
      diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 3
    end 
  
  it "Calculates the reading time for all entries where the time does not fit exactly" do 
      diary = Diary.new 
      diary_entry_1 = DiaryEntry.new("my title", "my contents here 1")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 4
    end 
  end 
  # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
    
  describe "Find best reading time entry behaviour" do 
    it "fails when wpm is 0" do
      diary = Diary.new 
      diary_entry_1 = DiaryEntry.new("my title", "my contents")
      diary.add(diary_entry_1)
      expect { diary.find_best_entry_for_reading_time(0,1) }.to raise_error(
        "WPM cannot be 0 or less"
        )
    end 
    
    
    
    
    
    context "There is a single entry which is readable within the reading time" do
      it "Returns that entry" do 
        diary = Diary.new 
        diary_entry = DiaryEntry.new("my title", "my contents")
        diary.add(diary_entry)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq diary_entry
      end 
    end 
    
    context "There is a single entry which is unreadable within the reading time" do 
      it "returns nil" do
        diary = Diary.new 
        diary_entry = DiaryEntry.new("my title", "my contents are here")
        diary.add(diary_entry)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
      end 
    end 
    
    context "Given more than one entry" do 
      it "Returns the longest entry that can be read in this time" do 
        diary = Diary.new 
        best_entry = DiaryEntry.new("my title", "one two")
        diary.add(DiaryEntry.new("my title", "one"))
        diary.add(best_entry)
        diary.add(DiaryEntry.new("my title", "one two three"))
        diary.add(DiaryEntry.new("my title", "one two three four"))
        result = diary.find_best_entry_for_reading_time(2,1)
        expect(result).to eq best_entry
          end 
      end 
    
  end 
end 