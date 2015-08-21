input = ARGV
todolist = TodoList.new

class TodoList #Would use 'Case', if time permits
attr_accessor :id, :task_text

  def intialize
  puts "Type todo.rb list to Display all To Do"
  puts "Type todo.rb add to Add new To Do"
  puts "Type todo.rb update to Update existing To Do"
  puts "Type todo.rb delete to Delete existing To Do"
  end

  def list
  display_todo = TodoList.all
  puts display_todo
  end

  def add(task_text)
  add_todo = TodoList.create(task_text)
  add_todo.save
  end

  def update(task_text, id)
  update_todo = TodoList.find_by(id: '')
  update_todo. = '#{task_text}'
  update_todo.save

  end

  def delete(id)
  delete_todo = TodoList.find_by(id: '')
  delete_todo.destroy
  end
end
