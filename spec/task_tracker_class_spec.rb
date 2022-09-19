require "task_tracker_class"

RSpec.describe TaskTracker do 
  context "Given no tasks" do
    it "Has an empty list" do 
      task_tracker = TaskTracker.new 
       expect(task_tracker.list).to eq []
    end 
  end 
  
  context "Given a single task" do 
    it "Adds the task to the list" do 
      task_tracker = TaskTracker.new 
      task_tracker.add("Clean room")
      expect(task_tracker.list).to eq ["Clean room"]
    end 
  end 
  
  context "Given two tasks" do 
    it "Adds two tasks to the list" do 
      task_tracker = TaskTracker.new 
      task_tracker.add("Clean room")
      task_tracker.add("Clean car")
      expect(task_tracker.list).to eq ["Clean room", "Clean car"]
    end 
  end
  
  context "When completing a single task" do 
    it "Removes the completed task from the list" do 
      task_tracker = TaskTracker.new 
      task_tracker.add("Clean room")
      task_tracker.add("Clean car")
      task_tracker.complete("Clean car")
      expect(task_tracker.list).to eq ["Clean room"]
    end 
  end
  
  context "When completing a non-existent task" do 
    it "fails" do 
      task_tracker = TaskTracker.new 
      task_tracker.add("Clean room")
      expect { task_tracker.complete("Clean car") }.to raise_error "Task not found"
    end 
  end
  
  
  
  
end 