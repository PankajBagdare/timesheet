class WorkingTimesController < ApplicationController
	def new
		@working_time = WorkingTime.new
	end

	def create
		@project=Project.find(params[:project_name])
		project_id = @project.id
		user_id = current_user.id
		t = Task.new(:user_id => :user_id,:project_id => :project_id,:date => :date,:description => :tasks)
		wt = WorkingTime.new(:user_id=>:user_id,:project_id=>:project_id, :start_time => :start_time, :end_time => :end_time,:date => :date)
		byebug
		if @working_time.save
			redirect_to working_time_path
		else
			render "new"
		end
	end

end
