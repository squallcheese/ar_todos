require_relative 'config/application'
require_relative 'app/controllers/controller_tasks'

#puts "Put your application code in #{File.expand_path(__FILE__)}"


puts 'To Do List'
puts "Type 'todo.rb list' to Display all To Do"
puts "Type 'todo.rb add' to Add new To Do"
puts "Type 'todo.rb update' to Update existing To Do"
puts "Type 'todo.rb delete' to Delete existing To Do"
puts ""

input = ARGV.each do |a|
  puts "#{a}"
end

# p "input #{input}"

  if input[0] == "list"
  ControllerTask.list

  elsif input[0] == "add"
  ControllerTask.add(input[1..-1].join(" "))

  elsif input[0] == "delete"
  ControllerTask.delete(input[1].to_i)

  elsif input[0] == "update"
  ControllerTask.update(input[1].to_i)

  else
  puts "Incorrect command"

end