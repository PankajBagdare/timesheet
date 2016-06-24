class Project < ActiveRecord::Base

	has_and_belongs_to_many :users
	has_one :working_time
	belongs_to :working_time
	has_many :tasks
	validates :name, presence: true
	validates :description, presence: true
	validates :start_date, presence: true
	validates :project_status, presence: true

end
