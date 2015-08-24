require 'faker'
require_relative '../app/models/task'

class TasksImporter
  def self.import
    15.times do |task|
      task = Task.create(task_text: Faker::Commerce.department, completion: 0)
    end
  end
end

TasksImporter.import