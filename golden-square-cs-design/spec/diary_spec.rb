require "diary"

RSpec.describe "diary method" do 
  context "Initially" do 
  end 
  it "Constructs an empty array ready for entries to be stored" do 
    diary = Diary.new 
    expect(diary.list_diary).to eq []
  end 
end 