class BookingsController < ApplicationController

  before_action :authenticate_user!

  def show
    @plane = Plane.find(params[:id])
  end

  def new
    @booking = Booking.new
    @plane = Plane.find(params[:id])
  end

  def create
    booking = Booking.new(booking_params)
    booking.user_id = current_user.id
    booking.plane_id = params[:plane_id]
    booking.save!
  end

  private

  def booking_params
  params.require(:booking).permit(:start_date, :end_date, :user_id, :plane_id )
  end

end
