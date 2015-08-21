require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTodos < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :todos do |t|
      t.string :todo_text
      t.string :created_on
      t.string :updated_on

      t.timestamps null: false
    end
  end
end
