class TaskTracker
  def initialize
    @tasks = []
  end 
  
 def add(task)
   @tasks << task 
 end 
  
 def list 
   return @tasks
 end 
 
 def complete(task)
   fail "Task not found" unless @tasks.include? task
   @tasks.delete(task)
 end 
  
 
  
  
end 
