class UsersProjects < ActiveRecord::Migration
  def change
  	create_table :users_projects do |t|
  		t.references :user
  		t.references :project
  	end
  	add_foreign_key :users_projects, :users
  	add_foreign_key :users_projects, :projects
  end
end
