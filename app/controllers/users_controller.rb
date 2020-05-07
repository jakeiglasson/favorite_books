class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user, only:[:show, :edit, :update, :destroy]

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
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @user.update(user_params)
      #success
      redirect_to users_path
    else
      #fail
      render :edit
    end
      
  end

  def destroy
    if @user.destroy
      #success
      redirect_to users_path
    else
      #fail
      render :edit
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :username, :password, :profile_picture)
  end

end


# Note for me - this is used to authenticate whether a user has signed in or not. It'll go into which ever pages we need it to go into. It's for me to remember to include it once the CRUD is done. - DF
# authenticate_user!