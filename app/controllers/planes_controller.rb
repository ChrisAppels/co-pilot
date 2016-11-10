class PlanesController < ApplicationController

before_action :authenticate_user!, except: [:index, :show]

before_action :find_plane, only: [:show]
  def index
  if params[:query] && params[:query].length>0
    @planes = Plane.query(params[:query])
  else
    @planes = Plane.all
  end
  end

  def new
    @plane = Plane.new
  end

  def create
    @plane = Plane.new(plane_params)
    @plane.user = current_user
    @plane.save

    redirect_to planes_path
  end



  def show
    @booking = Booking.new
  end
end


private

def find_plane
    @plane = Plane.find(params[:id])
end

def plane_params
  params.require(:plane).permit(:model, :description, :photo, :user, :capacity, :price, :photo_cache )
end

