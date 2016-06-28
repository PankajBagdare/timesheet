class WorkingTime < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	validates :user_id, uniqueness: true, presence: true
	validates :project_id, uniqueness: true, presence: true
	validates :start_time, presence: true
	validates :end_time, presence: true
	validates :date, presence: true

end
