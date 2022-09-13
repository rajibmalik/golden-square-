require 'counter'

RSpec.describe Counter do 
  it "Keeps a count of an integer" do 
    counter = Counter.new
    counter.add(10)
    result= counter.report
    expect(result).to eq "Counted to 10 so far"
  end 
end 