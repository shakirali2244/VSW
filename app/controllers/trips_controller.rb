class TripsController < ApplicationController
  before_action :authenticate_manager!

  def new
    @trip = Trip.new
  end

  def create
    @trip         = Trip.new(trip_params)
    @trip.manager = current_manager
    if @trip.save
      redirect_to trip_path(@trip), notice: "Trip created!"
    else
      flash[:alert] = "See errors below"
      render :new
    end
  end

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
      redirect_to trip_path(@trip), notice: "Trip updated!"
    else
      flash[:alert] = "See errors below"
      render :edit
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path, notice: "Trip deleted!"
  end

  def trip_params
    params.require(:trip).permit(:title,
                                 :note,
                                 :startingpoint,
                                 :endingpoint,
                                 :startingtime,
                                 :endingtime)
  end

end