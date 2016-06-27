class ProjectsController < ApplicationController
	def new
	end

	def create
		@project = Projects.new(params[:projects])
		if @project.save
			redirect_to '/user/:id'
		else
			render "new"
		end
	end
	
end
