require "diary_entry"

RSpec.describe "diary_entry method" do 
 it "Constructs instances of title and contents and can return them " do 
   diary_entry = DiaryEntry.new("my title", "my contents")
   expect(diary_entry.title).to eq "my title" 
   expect(diary_entry.contents).to eq "my contents" 
   end 
end 