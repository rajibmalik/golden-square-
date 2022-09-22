require "todo_list"

RSpec.describe TodoList do
  context "Initially" do 
    it "The incomplete list will be empty" do
      todo_list = TodoList.new 
      expect(todo_list.incomplete).to eq []
    end 
  end 
    
    it "The complete list will be empty" do
      todo_list = TodoList.new 
      expect(todo_list.complete).to eq []
    end 
      
    it "Raises an error when using giveup without any todos" do
      todo_list = TodoList.new 
      expect{todo_list.give_up!}.to raise_error "No todos have been added"
    end  
    
    

 

end 