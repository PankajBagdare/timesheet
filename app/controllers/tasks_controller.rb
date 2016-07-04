class TasksController < ApplicationController
	def new
		@task = Task.new
	end

	def create
		wt = WorkingTime.find(params[:task][:working_time_id])
		task = wt.tasks.new(task_params)
		if task.save
			redirect_to user_path(current_user), notice: "Sucessfully updated"
		else
			render "new"
		end
	end

	def task_params
		params.require(:task).permit(:description)
	end
end
