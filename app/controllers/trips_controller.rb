class TripsController < ApplicationController
  def index
    @trips = Trip.all
    render :index
  end

  def show
    @trip = Trip.find_by(id: params[:id])
    render :show
  end

  def create
    @trip = Trip.create(
      user_id: params[:user_id],
      title: params[:title],
      image_url: params[:image_url],
      start_time: DateTime.parse(params[:start_time]),
      end_time: DateTime.parse(params[:end_time]),
    )
    render :show
  end

  def destroy
  end
end
