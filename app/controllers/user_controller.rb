class UserController < ApplicationController

  def new
  	@user = User.new
  end

  def index
    @projects= Project.all
    @users = User.all
  end

  def show	
  	@user = User.find(session[:user_id])
    @projects = @user.projects
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to new_session_path, notice: "Thank you for signing up. Now log in"
    else
    	render "new"
    end
  end
  
  def add_member
    
    project = Project.find_by_name(params[:project_name])
    project.users << User.find(params[:user_id])
    render :show

  end

  def show_timesheet
    
  end

  private 

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :user_name, :email, :password, :category, :company)
  end

end
