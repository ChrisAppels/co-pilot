class PlanesController < ApplicationController

before_action :find_plane, only: [:show]
  def index
    @planes = Plane.all
  end

  def new
    @plane = Plane.new
  end

  def create
    @plane = Plane.new(plane_params)
    @plane.save
    raise

    redirect_to planes_path

  end


  def show

  end
end


private

def find_plane
    @plane = Plane.find(params[:id])
end

def plane_params
  params.require(:plane).permit(:model, :description, :photo, :user, :capacity, :price, :photo_cache )
end

