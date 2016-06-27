class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end

	def create
		byebug
		@project = Project.new(project_permit)
		if @project.save
			@project.users << User.find(current_user.id)
			redirect_to root_url
		else
			render "new"
		end
	end

	private

	def project_permit
		params.require(:project).permit(:name, :description, :start_date, :project_status)
	end

end
