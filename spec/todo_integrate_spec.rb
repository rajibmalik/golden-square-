require "todo_list"
require "todo"

RSpec.describe "todo_integration" do 
  context "When a todo is added" do 
    it "Adds it to the incomplete list" do
      todo_list = TodoList.new 
      todo_1 = Todo.new("Clean room")
      todo_2 = Todo.new("Clean car")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      expect(todo_list.incomplete).to eq [todo_1, todo_2]
    end 
  end
  
  context "When a todo is added and marked as done" do 
    it "Adds it to the complete list" do
      todo_list = TodoList.new 
      todo_1 = Todo.new("Clean room")
      todo_2 = Todo.new("Clean car")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_1.mark_done!
      todo_2.mark_done!
      expect(todo_list.complete).to eq [todo_1, todo_2]
    end 
  end
  
    context "When there are todos marked as done and there are incomplete todos" do 
    it "Returns only the incomplete todos" do
      todo_list = TodoList.new 
      todo_1 = Todo.new("Clean room")
      todo_2 = Todo.new("Clean car")
      todo_3 = Todo.new("Clean house")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_1.mark_done!
      todo_2.mark_done!
      expect(todo_list.incomplete).to eq [todo_3]
    end 
  end
  
  context "When there are incomplete todos and the user 'gives up'" do 
    it "Marks every todo as complete" do
      todo_list = TodoList.new 
      todo_1 = Todo.new("Clean room")
      todo_2 = Todo.new("Clean car")
      todo_3 = Todo.new("Clean house")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_list.give_up!
      expect(todo_list.incomplete).to eq []
      expect(todo_list.complete).to eq [todo_1, todo_2, todo_3]
    end 
  end
  
  
end