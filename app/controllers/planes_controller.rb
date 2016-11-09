class PlanesController < ApplicationController
skip_before_action :authenticate_user!, only: [ :index, :show]
before_action :find_plane, only: [:show]
  def index
  if params[:query] && params[:query].length>0
    @planes = Plane.where('description iLIKE ?', "%#{params[:query]}%")
  else
    @planes = Plane.all
  end
end

  def show

  end
end


private

def find_plane
    @plane = Plane.find(params[:id])
end
