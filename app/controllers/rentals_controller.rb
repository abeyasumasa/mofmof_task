class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
  end

  def create
    Rental.create(rental_params)
    redirect_to new_rental_path
  end

  def show
  end

  private

  def rental_params
    params.require(:rental).permit(:property_name, :rent, :adress, :age, :note)
  end
end
