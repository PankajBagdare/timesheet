class SetDefault < ActiveRecord::Migration
  def change
  	change_column :projects, :project_status, :string, default: "beginning"
  end
end
