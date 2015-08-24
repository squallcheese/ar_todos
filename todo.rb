require_relative 'config/application'
require_relative 'app/controllers/controller_tasks'

#puts "Put your application code in #{File.expand_path(__FILE__)}"

puts "Type todo.rb list to Display all To Do"
puts "Type todo.rb add to Add new To Do"
puts "Type todo.rb update to Update existing To Do"
puts "Type todo.rb delete to Delete existing To Do"
puts ""

input = ARGV

# p "input #{input}"

  if input[0] == "list"
  ControllerTask.list

  elsif input[0] == "add"
  ControllerTask.add(input[1..-1].join(" "))

  elsif input[0] == "delete"
  puts "Deleted #{ControllerTask.task_text(input[1].to_i)} from your To Do List..."
  ControllerTask.delete(input[1].to_i)

  elsif input[0] == "complete"
  ControllerTask.update(input[1].to_i)
  #puts list

  else
  "No such command"

  end



