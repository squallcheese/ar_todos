class TaskView < ActiveRecord::Base

  def self.display_complete(id, text)
    puts "task - #{id} : #{text} ---> COMPLETE"
  end

  def self.display_incomplete(id, text)
    puts "task - #{id} : #{text}"
  end

  def self.display_added(text)
    puts "Added #{input[1..-1].join(" ")} to your To Do List..."
  end

  def self.display_deleted(id)
    puts "Deleted #{ControllerTask.task_text(input[1].to_i)} from your To Do List..."
  end

  def self.display_completed(id)
    puts "task - #{id} : #{text} ---> COMPLETE"
  end

end
