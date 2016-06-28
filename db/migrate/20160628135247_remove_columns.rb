class RemoveColumns < ActiveRecord::Migration
  def change
  	remove_column :working_times, :day
  	remove_column :working_times, :month
  	remove_column :working_times, :year
  	add_column :working_times, :date, :date
  end
end
