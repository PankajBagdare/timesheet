class FixRelationship < ActiveRecord::Migration
  def change
  	add_column :tasks, :working_time_id, :integer
  end
end
