require "to_do_checker"

RSpec.describe "to_do_checker method" do
  it "returns true when given a text including #TODO anywhere" do 
    result = to_do_checker("#TODO clean room")
    expect(result).to eq true
  end 
  
  it "returns false when given a text not including #TODO" do 
    result = to_do_checker("clean room ")
    expect(result).to eq false
  end 
  context "empty string given"do 
    it "returns an error" do
      expect {to_do_checker("")}.to raise_error "No text was given"
   end
  end 
end


