class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user
      t.references :project
      t.date :date
      t.text :description
      t.timestamps null: false
    end
    add_foreign_key :tasks, :users
    add_foreign_key :tasks, :projects
  end
end
