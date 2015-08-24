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
    end
  end

  def self.add(task_text)
    tasks = Task.create(task_text: "")
    TaskView.display_added
    tasks.save
  end

  def self.delete(id)
    Task.destroy(id)
  end

  def self.update_completeness(id)
    tasks = Task.find(id)
    tasks[:completion] = 1
    tasks.save
  end
end