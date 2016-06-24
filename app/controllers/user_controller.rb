class UserController < ApplicationController

  def new
  	@user = User.new
  end

  def home	
  	@user =User.find(session[:user_id])
  	#id = session[:user_id]
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to new_session_path, notice: "Thank you for signing up "
    else
    	render "new"
    end
  end
  def create_project
  	
  end
  def add_member
  	
  end

  private 

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :user_name, :email, :password, :category, :company)
  end

end
