class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.string :project_status
      t.date :end_date
      t.timestamps null: false
    end
  end
end
