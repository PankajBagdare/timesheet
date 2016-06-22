class User < ActiveRecord::Base
	has_and_belongs_to_many :projects
	has_many :tasks
	has_one :working_time
	validates :first_name, presence: true, format: { with: /\A[a-zA-Z]*\z/ }, uniqueness: { case_sensitive: false }
	validates :last_name, presence: true, format: { with: /\A[a-zA-Z]*\z/ }, uniqueness: { case_sensitive: false }
	validates :password, presence: true, confirmation: true, length: { minimum: 6 }
	validates :email, presence: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }, uniqueness: true
	validates :user_name, presence: true, confirmation: true, uniqueness: true
	#validates :type, inclusion: {in: %w(admin normal)}
end
