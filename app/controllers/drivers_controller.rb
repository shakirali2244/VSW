class DriversController < ApplicationController
  before_action :authenticate_manager!

  def new
    @driver = Driver.new
  end

  def create
    @driver         = Driver.new(driver_params)
    if @driver.save
      redirect_to drivers_path, notice: "Driver created!"
    else
      flash[:alert] = "See errors below"
      render :new
    end
  end

  def index
    @drivers = Driver.all
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def edit
    @driver = Driver.find(params[:id])
  end

  def update
    @driver = Driver.find(params[:id])
    if @driver.update(driver_params)
      redirect_to driver_path(@driver)
    else
      flash[:alert] = "See errors below"
      render :edit
    end
  end

  def destroy
    @driver = Driver.find(params[:id])
    @driver.destroy
    redirect_to drivers_path, notice: "Driver deleted!"
  end

  def driver_params
    params.require(:driver).permit(:name, :location)
  end
end