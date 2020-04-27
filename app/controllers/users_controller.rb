class UsersController < ApplicationController


  def index
      @users = User.all
    end


  def new
    @user = User.new
  end

  def create
    # Strong Parameter の記述
    User.create(user_params)
  end

  def edit
      @user = User.find(params[:id])
    end

  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
