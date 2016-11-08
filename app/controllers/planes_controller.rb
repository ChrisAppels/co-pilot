class PlanesController < ApplicationController

before_action :find_plane, only: [:show]
  def index
    @planes = Plane.all
  end

  def show

  end
end


private

def find_plane
    @plane = Plane.find(params[:id])
end
