class UsersController < ApplicationController
  include SessionsHelper
  before_action :logged_in_user, only: [:show]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(
      username: params[:user][:username],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation]
    )
    if user.valid?
      log_in(user.id)
      flash[:success] = "Successfully Created User!"
      user.save
      redirect_to user
    else
      flash[:warning] = "Error creating profile, try a valid username or password"
      redirect_to signup_path
    end
  end
end
