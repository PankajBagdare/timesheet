class WorkingTime < ActiveRecord::Base

	has_many :tasks
	belongs_to :user
	belongs_to :project
	validates :user_id, presence: true
	validates :project_id, presence: true
	validates :start_time, presence: true
	validates :end_time, presence: true
	validates :date, presence: true

	accepts_nested_attributes_for :tasks

end
