class CarTransfersController < ApplicationController
  def create
    Car.create(car_transfer_params)
    redirect_to :index
  end

  def index
    @car_transfers = CarTransfer.all
  end

  def show
    @car_transfer = CarTransfer.find(car_transfer_params[:id])
    @car = Car.where(@car_transfer.car_specs)
  end

  private

  def car_transfer_params
    params.permit(:id).to_h
  end
end
