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
    render layout: "car_dash"
  end

  def new
    @car_transfer = CarTransfer.new
  end

  def create
    @car_transfer = CarTransfer.create(create_car_transfer)
  end

  private

  def car_transfer_params
    params.permit(:id).to_h
  end

  def create_car_transfer
    permit_params = params.permit(:radius, :car_describtion).to_h
    {
      lat: "47.4142862",
      lng: "9.3567323",
      radius: permit_params[:radius],
      car_describtion: permit_params[:car_describtion].to_json
    }
  end
end
