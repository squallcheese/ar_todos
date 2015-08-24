require_relative '../../config/application'

# this is where you should use an ActiveRecord migration to

class CreateTasks < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :tasks do |t|
      t.string :completion
      t.string :task_text #task id is accessed by primary ID

      t.timestamps null: false #This shows 'created_on' and 'updated_on'
    end
  end
end
