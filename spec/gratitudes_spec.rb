require 'gratitudes'

# Classes should be tested as a whole rather than individual tests for each 
# method 

RSpec.describe Gratitudes do 
    # Would be ideal to have more context situations such as the 
    # initial empty array
    
    
    
  it "Adds something to be grateful for to an empty array" do 
    gratitude_list = Gratitudes.new 
    gratitude_list.add("house")
    gratitude_list.add("friends")
    gratitude_list.add("family")
    result = gratitude_list.format 
    expect(result).to eq "Be grateful for: house, friends, family"
  end 
end 
    
    
    
    
    

