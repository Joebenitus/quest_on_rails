class LocationsController < ApplicationController

  before_action :authenticate_user!
  def index
    @locations = Location.all
    before_action :authenticate_user!
    render "layouts/locations", :object => @locations
  end

  def new
    @location = Location.new
    render :new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      render :new
    end
  end

  def edit
    @location = Location.find(params[:id])
    render :edit
  end
  
  def show
    @location = Location.find(params[:id])
    @locations =Location.all
    render :show
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      redirect_to locations_path
    else
      render :edit
    end
  end

  def destroy
    @location = Location.find(params[:id])
    redirect_to locations_path
  end

  private 
    def location_params
      params.require(:location).permit(:name)
    end
end