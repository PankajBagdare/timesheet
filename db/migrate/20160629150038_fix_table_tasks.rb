class FixTableTasks < ActiveRecord::Migration
  def change
  	remove_foreign_key :tasks, column: :user_id
  	remove_foreign_key :tasks, column: :project_id
  	remove_column :tasks, :date
  end
end
