class User < ActiveRecord::Base
	#has_secure_password
	before_save { self.email = email.downcase }
	has_and_belongs_to_many :projects
	has_many :tasks
	has_many :working_times
	validates :first_name, presence: true, format: { with: /\A[a-zA-Z]*\z/ }
	validates :last_name, presence: true, format: { with: /\A[a-zA-Z]*\z/ }
	validates :password, presence: true, confirmation: true, length: { minimum: 6 }
	validates :email, presence: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ },uniqueness: { case_sensitive: false }
	validates :user_name, presence: true, uniqueness: true
	validates :category, inclusion: { in: ["admin", "normal"] }

	def authenticate(pass)
  	pass == self.password
  end

  def name
  	[first_name ,last_name].join(" ")
  end
  	
end
