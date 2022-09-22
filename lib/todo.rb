# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    fail "No task was added" if task.empty?
    @task = task 
  end

  def task
    return @task 
    # returns the task as a string
  end

  def mark_done!
    @task = @task + " #DONE"
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    @task.include? " #DONE"
    # Returns true if the task is done
    # Otherwise, false
  end
end