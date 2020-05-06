class UsersController < ApplicationController

  before_action :find_user, only:{:show, :edit, :update, :destroy}

  def index
    @users = User.all
  end

  def show
    
  end
  
  def new
    @user = User.new
  end

  def create
    if User.create(user_params)
      #success
      render user_path[:id]
    else
      render :new
  end

  def edit
    
  end

  def update
    if @user.update(user_params)
      #success
      render user_path[:id]
    else
      #fail
      render :edit
    end
      
  end

  def destroy
    @user.destroy
    render :index
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end
end
