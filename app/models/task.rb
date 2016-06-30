class Task < ActiveRecord::Base

	belongs_to :user
	belongs_to :project
	has_one :working_time
	belongs_to :working_time
	validates :working_time_id, presence: true
	validates :description, presence: true

	accepts_nested_attributes_for :working_time
end
