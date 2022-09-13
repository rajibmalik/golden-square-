require 'string_builder'

RSpec.describe StringBuilder do
  context "Initially" do
    it "Initially returns an empty string as an output" do
      string_builder = StringBuilder.new 
      expect(string_builder.output).to eq ""
    end 
    
    it "initially returns a size of 0" do
      string_builder = StringBuilder.new 
      expect(string_builder.size).to eq 0 
    end 
  end 
 
  context "given many additions of a string" do 
    it "outputs the string which has many additions" do 
      string_builder = StringBuilder.new
      string_builder.add("Hello")
      string_builder.add("There")
      string_builder.add("General")
      string_builder.add("Kenobi")
      expect(string_builder.output).to eq "HelloThereGeneralKenobi"
    end 
  end 
  
  it "has the size of the string with many additions" do
    string_builder = StringBuilder.new 
    string_builder.add("Hello")
    string_builder.add("There")
    string_builder.add("General")
    string_builder.add("Kenobi")
    expect(string_builder.size).to eq 23
  end 
end 