require "grammar"

RSpec.describe "grammar method" do 
  
  it "checks that a given sentence starts with a capital letter" do 
    result = grammar_fix("hello")
    expect(result).to eq false
  end 
  
  it "Checks that a given sentence ends with a full stop" do 
    result = grammar_fix("Hello.")
    expect(result).to eq true
  end 
  
  it "Checks that a given sentence ends in ?" do 
    result = grammar_fix("Hello?")
    expect(result).to eq true
  end 
  
  it "Checks that a given sentence ends with a !" do 
    result = grammar_fix("Hello!")
    expect(result).to eq true
  end 
  
  it "Returns an error message when there is no text given" do 
    expect {grammar_fix("")}.to raise_error "No text was given"
  end 
  
end 