class CarsController < ApplicationController
  def index
    render json: cars.to_json
  end

  private

  def cars
    [
      {lat: 47.414928, lng: 9.365397, model: "Volvo V90"},
      {lat: 47.416928, lng: 9.363397, model: "Volvo V60"},
      {lat: 47.412928, lng: 9.367397, model: "Volvo V40"}
    ]
  end
end
