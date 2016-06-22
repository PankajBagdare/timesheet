class Task < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	validates :user_id, presence: true, uniqueness: true
	validates :project_id, presence: true, uniqueness: true
	validates :date, presence: true
	validates :description, presence: true
end
