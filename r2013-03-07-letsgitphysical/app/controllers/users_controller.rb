class UsersController < ApplicationController
  def index
    @users = User.order(:name)
  end
  def new
    @user = User.new
  end
  def create
    User.create(params[:user])
    @users = User.order(:name)
    respond_to do |format|
      format.html {redirect_to(users_path)}
      format.js
    end
  end
  def show
  end
  def edit
  end
  def update
  end
  def destroy
  end
end