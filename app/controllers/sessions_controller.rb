class SessionsController < ApplicationController
  def new
  end
  
  def index
  end

  def create
  	@user = User.find_by_user_name(params[:user])
  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		redirect_to user_path(@user) , notice: 'Successfully Logged in!'
  	else
      flash[:notice] = 'Username or password is incorrect'
  		redirect_to '/sessions/new', notice: 'Username or password is incorrect'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to '/sessions/new'
  end

end
