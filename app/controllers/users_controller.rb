class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only:[:show, :edit, :update]


  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(name: params[:user][:name], email: params[:user][:email], family_group_id: params[:user][:family_group_id])
      redirect_to user_path(@user)
    else
      render :edit
    end
  end


  def set_user
    @user = User.find(params[:id])
  end
end
