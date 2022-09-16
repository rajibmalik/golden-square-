require "grammar_stats"

RSpec.describe GrammarStats do 
 
  describe "#check" do 
     it "Returns true if the text begins with a capital" do 
       grammar_entry = GrammarStats.new 
       expect(grammar_entry.check("hello")).to eq false 
    end 
    
    it "Returns true if the text ends with suitable punctuation ending (.?!)" do 
      grammar_entry = GrammarStats.new 
      expect(grammar_entry.check("Hello")).to eq false
    end 
  end 
  
  describe "#percentage_good" do 
    it "Returns a percentage number of texts that have passed the #check" do 
      percentage_checked = GrammarStats.new 
      percentage_checked.check("hello")
      percentage_checked.check("Hello")
      percentage_checked.check("HellO")
      percentage_checked.check("Hello.")
      result = percentage_checked.percentage_good
      expect(result).to eq 25
    end 
  end 
  
end 



