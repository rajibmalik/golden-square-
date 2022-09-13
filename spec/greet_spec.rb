require 'greet'

Rspec.describe 'greet method' do 
    it 'greets Sarita' do 
        expect(greet("Sarita")).to eq "Hello Sarita!"
  end 
end 
        