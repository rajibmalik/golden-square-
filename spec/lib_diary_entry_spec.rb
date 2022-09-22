require "lib_diary_entry"

RSpec.describe DiaryEntry do 
  it "it constructs" do 
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end 
  
  describe "#count_words" do
    it "Returns zero when the contents is empty" do 
      diary_entry = DiaryEntry.new("my_title", "")
      expect(diary_entry.count_words).to eq 0 
    end 
  end 
  
  it "Returns one if the contents is one word" do 
    diary_entry = DiaryEntry.new("my_title", "one")
    expect(diary_entry.count_words).to eq 1 
  end 
  
  it "Counts the number of words in the contents" do 
    diary_entry = DiaryEntry.new("my_title", "one two three four")
    expect(diary_entry.count_words).to eq 4 
  end 
  
  describe "#reading_time" do
    # When reading time = 0 it fails and an error is thrown 
    it "fails if the reading time is 0" do 
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      expect{diary_entry.reading_time(0)}.to raise_error "WPM cannot be 0 or less"
    end 
    
    it "Returns zero when the contents is empty" do 
      diary_entry = DiaryEntry.new("my_title", "")
      expect(diary_entry.reading_time(2)).to eq 0 
    end 
  
  
  it "Returns one if the contents is one word" do 
    diary_entry = DiaryEntry.new("my_title", "one")
    expect(diary_entry.reading_time(2)).to eq 1 
  end 
  
  it "Returns the reading time ceiling for the contents" do 
    diary_entry = DiaryEntry.new("my_title", "one two three four five")
    expect(diary_entry.reading_time(2)).to eq 3 
  end 
end 
 
  
end 