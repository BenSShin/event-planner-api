class TripsController < ApplicationController
  def index
    @trips = Trip.all
    render :index
  end

  def show
    @trip = Trip.find_by(id: params[:id])
    render :show
  end
end
