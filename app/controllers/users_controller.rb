class UsersController < ApplicationController

  before_filter :find_user, only: [:show]

  def show
    @bookings = Booking.all.where(user_id: params[:id])
    @planes = Plane.all
    # @plane = Plane.where(id: @booking.plane_id).first
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save
    user_find = User.find_by email: "#{user.email}"
    redirect_to user_path(user_find.id)
  end

  private

    def find_user
      @user = User.find(params[:id])
    end

    def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :address)
    end

end
