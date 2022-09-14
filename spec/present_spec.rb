require 'present'

RSpec.describe Present do
  context "There is already a wrapped content" do
    it "fails" do
        present = Present.new
        expect {present.wrap("cake").to raise_error "A contents has already been wrapped."}
    end 
  end 
  
  context "There is no content to be unwrapped" do
    it "fails" do
        present = Present.new
        expect {present.unwrap("").to raise_error "No contents have been wrapped."}
    end 
  end 
end 