class AddingForeignKey < ActiveRecord::Migration
  def change
  	add_foreign_key :tasks, :working_times
  end
end
