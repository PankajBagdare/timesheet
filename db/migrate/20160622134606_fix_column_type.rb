class FixColumnType < ActiveRecord::Migration
  def change
  	rename_column :users, :type, :category
  end
end
