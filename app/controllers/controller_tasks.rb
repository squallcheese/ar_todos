# require_relative 'config/application'

require_relative '../views/task_views'

class ControllerTask
#attr_accessor :id, :task_text, :completion - not required, already are objects

  def self.list
    lists = Task.all
    lists.each_with_index do |x, index|
      if x.completion == 1.to_s
        TaskView.display_complete(index+1, x.task_text)
      elsif x.completion == 0.to_s
        TaskView.display_incomplete(index+1, x.task_text)
      end
      #p lists
    end
  end


  def self.add(text)
    task = Task.create(task_text: " ")
    TaskView.display_added
    task.save
  end

  def self.delete(task_id)
    task = Task.find(id: task_id.to_i)
    TaskView.display_deleted
    task.destroy
  end

  def self.update(task_id)
    task = Task.find(id: task_id.to_i)
    task.completion == 1.to_s
    TaskView.display_completed
    task.save
  end
end