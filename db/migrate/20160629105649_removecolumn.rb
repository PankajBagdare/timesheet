class Removecolumn < ActiveRecord::Migration
  def change
  	remove_column :tasks, :working_tasks_id, :integer
  end
end
