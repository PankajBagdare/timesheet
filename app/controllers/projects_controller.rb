class ProjectsController < ApplicationController
	def index
		@project = Project.all
	end
	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_permit)
		if @project.save
			@project.users << User.find(current_user.id)
			id = current_user.id
			redirect_to user_path(current_user)
		else
			render "new"
		end
	end

	private

	def project_permit
		params.require(:project).permit(:name, :description, :start_date, :project_status)
	end

end
