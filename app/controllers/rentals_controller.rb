class RentalsController < ApplicationController

  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    binding.pry
    if @rental.save
      redirect_to rentals_path, notice: "ブログを作成しました！"
    else
      render :new
    end
  end

  def show
    @rental = Rental.find(params[:id])
  end

  private

  def rental_params
    params.require(:rental).permit(:property_name, :rent, :adress, :age, :note)
  end

end
