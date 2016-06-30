class WorkingTimesController < ApplicationController

	def new
		@working_time = WorkingTime.new
	end

	def create

		wt = current_user.working_times.build(working_times_params)
		if wt.save
			redirect_to new_working_time_task_path(wt)
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
    :date )
	end

end
