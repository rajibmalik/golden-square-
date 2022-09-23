class TodoList
  def initialize
    @todos = []
    # constructs an empty array ready to store todos 
  end 
  
  def add(todo) # todo is an instance of Todo representing a string 
    @todos << todo 
  end
  
  def list_todo
    return @todos
    # returns a list of all of the stored todos 
  end 
end 