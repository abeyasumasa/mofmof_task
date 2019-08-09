class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :edit, :update, :destroy]

  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
    2.times {@rental.stations.build}
  end

  def create
    @rental = Rental.new(rental_params)
    if @rental.save
      redirect_to rentals_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    binding.pry
    if @rental.update(updete_rental_params)
      redirect_to rentals_path
    else
      render :edit
    end
  end

  def destroy
    @rental.destroy
    redirect_to rentals_path
  end

  private
  def rental_params
    params.require(:rental).permit(
      :property_name, :rent, :adress, :age, :note,
      stations_attributes: [ :rental_id, :route_name, :station, :walking_minute])
  end

  def updete_rental_params
    params.require(:rental).permit(
      :property_name, :rent, :adress, :age, :note,
      stations_attributes: [ :rental_id, :route_name, :station, :walking_minute,:_destroy, :id])
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end
end
