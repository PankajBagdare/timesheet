class UserController < ApplicationController
  def new
  	@user = User.new
  end

  def home

  end
  def show
  	@user= User.find(params[:id])
  end

  def create
  	
  end
end
