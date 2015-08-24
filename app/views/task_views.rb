class TaskView < ActiveRecord::Base

  def To_do
  puts 'To Do List'
  end

  def self.display_complete(id, text)
    puts "task - #{id} :  task - #{text} ---> COMPLETE"
  end

  def self.display_incomplete(id, text)
    puts "task - #{id} :  task - #{text}"
  end

  def self.display_added(id, text)
  puts "Added #{input[1..-1].join(" ")} to your To Do List..."
  end

end
