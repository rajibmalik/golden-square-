# File: lib/todo_list.rb
class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) # todo is an instance of Todo
    @todo_list << todo 
  end

  def incomplete
    incomplete_todos = @todo_list.select do |todo|
      todo.done? != true 
    end 
    return incomplete_todos  
  end

  def complete
    complete_todos = @todo_list.select do |todo| 
      todo.done? == true
    end 
    return complete_todos
  end

  def give_up!
    fail "No todos have been added" if @todo_list.empty?
     @todo_list.select do |todo|
      todo.mark_done!
    end 
    #fail "No todos have been added" if @todo_list.nil?
    # Marks all todos as complete
  end
end

