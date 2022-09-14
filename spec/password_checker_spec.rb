require "password_checker"

RSpec.describe PasswordChecker do
  context "Password is not 8 or more characters long" do
    it "fails" do 
      password= PasswordChecker.new
      expect {password("hello").to raise_error "Invalid password, must be 8+ characters."}
    end 
  end 
end 