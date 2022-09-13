require 'report_length'

RSpec.describe "report_length" do 
    it "Gives the length of the string" do
    result = report_length("cat")
    expect(result).to eq "This string was 3 characters long."
  end
end
