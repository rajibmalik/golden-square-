require "todo"

RSpec.describe Todo do
  context "Constructs" do 
    it "Returns the task" do
      todo = Todo.new("Clean room")
      expect(todo.task).to eq "Clean room"
    end
  end 
  
  context "When todo is done" do
    it "Returns true" do 
      todo = Todo.new("Clean room")
      todo.mark_done!
      expect(todo.done?).to eq true 
    end 
  end 
  
  context "When todo is not done" do 
    it "Returns false" do 
      todo = Todo.new("Clean room")
      expect(todo.done?).to eq false
    end 
  end 

      
end