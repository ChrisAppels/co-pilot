class UsersController < ApplicationController

  before_filter :find_user, only: [:show]

  def show
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to user_path
  end

  private

    def find_user
      @user = User.find(params[:id])
    end

    def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :address)
    end

end
