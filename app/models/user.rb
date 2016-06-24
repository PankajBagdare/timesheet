class User < ActiveRecord::Base
	#has_secure_password
	has_and_belongs_to_many :projects
	has_many :tasks
	has_one :working_time
	validates :first_name, presence: true, format: { with: /\A[a-zA-Z]*\z/ }
	validates :last_name, presence: true, format: { with: /\A[a-zA-Z]*\z/ }
	validates :password, presence: true, confirmation: true, length: { minimum: 6 }
	validates :email, presence: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ },uniqueness: { case_sensitive: false }
	validates :user_name, presence: true, uniqueness: true
	validates :category, inclusion: { in: ["admin", "normal"] }

	def authenticate(pass)
  		pass == self.password
  	end
end
