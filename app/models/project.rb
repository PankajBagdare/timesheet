class Project < ActiveRecord::Base

	has_and_belongs_to_many :users 
	has_many :working_times
	has_many :tasks
	validates :name, presence: true, uniqueness: true
	validates :description, presence: true
	validates :start_date, presence: true
	validates :project_status, presence: true

end
