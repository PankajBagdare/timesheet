class WorkingTimesController < ApplicationController
	def new
		@working_time = WorkingTime.new
		3.times do
			task = @working_time.tasks.build
		end
	end

	def create

		#t = Task.new(task_params)
		wt = current_user.build_working_time(working_times_params)
		byebug	
		if wt.save
			redirect_to working_time_path
		else
			render "new"
		end
	end

	# private
	# def task_params
	# 	params.require(:working_time).permit(:user_id, :project_id, :date, :description)		
	# end

	private 
	def working_times_params
		params.require(:working_time).permit(
    :project_id, 
    :start_time,
    :end_time,
    :date,  
    tasks_attributes: [:project_id,:date,:description] )
	end

end
