class CreateWorkingTimes < ActiveRecord::Migration
  def change
    create_table :working_times do |t|
      t.references :user
      t.references :project
      t.time :start_time
      t.time :end_time
      t.integer :day
      t.string :month
      t.string :year
      t.timestamps null: false
    end
    add_foreign_key :working_times, :users
    add_foreign_key :working_times, :projects
  end
end
